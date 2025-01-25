import os
from sqlalchemy import create_engine, Column, Integer, String, Date, ForeignKey
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, relationship
from datetime import datetime, timedelta
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

Base = declarative_base()

class Book(Base):
    __tablename__ = 'books'
    
    id = Column(Integer, primary_key=True)
    title = Column(String, nullable=False)
    author = Column(String, nullable=False)
    isbn = Column(String, unique=True)
    quantity = Column(Integer, nullable=False)
    borrowings = relationship('Borrowing', back_populates='book')

class Member(Base):
    __tablename__ = 'members'
    
    id = Column(Integer, primary_key=True)
    name = Column(String, nullable=False)
    email = Column(String, unique=True)
    phone = Column(String)
    borrowings = relationship('Borrowing', back_populates='member')

class Borrowing(Base):
    __tablename__ = 'borrowings'
    
    id = Column(Integer, primary_key=True)
    book_id = Column(Integer, ForeignKey('books.id'))
    member_id = Column(Integer, ForeignKey('members.id'))
    borrow_date = Column(Date)
    return_date = Column(Date)
    
    book = relationship('Book', back_populates='borrowings')
    member = relationship('Member', back_populates='borrowings')

class LibraryManagementSystem:
    def __init__(self):
        # PostgreSQL connection string from environment variables
        DB_USERNAME = os.getenv('DB_USERNAME', 'postgres')
        DB_PASSWORD = os.getenv('DB_PASSWORD', 'password')
        DB_HOST = os.getenv('DB_HOST', 'localhost')
        DB_PORT = os.getenv('DB_PORT', '5432')
        DB_NAME = os.getenv('DB_NAME', 'library_db')

        DATABASE_URL = f'postgresql://{DB_USERNAME}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}'
        
        self.engine = create_engine(DATABASE_URL)
        Base.metadata.create_all(self.engine)
        self.Session = sessionmaker(bind=self.engine)

    def add_book(self, title, author, isbn, quantity):
        session = self.Session()
        try:
            book = Book(title=title, author=author, isbn=isbn, quantity=quantity)
            session.add(book)
            session.commit()
            return book.id
        except Exception as e:
            session.rollback()
            print(f"Error adding book: {e}")
            return None
        finally:
            session.close()

    def add_member(self, name, email, phone):
        session = self.Session()
        try:
            member = Member(name=name, email=email, phone=phone)
            session.add(member)
            session.commit()
            return member.id
        except Exception as e:
            session.rollback()
            print(f"Error adding member: {e}")
            return None
        finally:
            session.close()

    def borrow_book(self, book_id, member_id, days=14):
        session = self.Session()
        try:
            book = session.query(Book).filter_by(id=book_id).first()
            
            if book and book.quantity > 0:
                borrow_date = datetime.now().date()
                return_date = borrow_date + timedelta(days=days)
                
                borrowing = Borrowing(
                    book_id=book_id, 
                    member_id=member_id, 
                    borrow_date=borrow_date,
                    return_date=return_date
                )
                
                book.quantity -= 1
                session.add(borrowing)
                session.commit()
                return True
            else:
                print("Book not available.")
                return False
        except Exception as e:
            session.rollback()
            print(f"Error borrowing book: {e}")
            return False
        finally:
            session.close()

    def return_book(self, book_id, member_id):
        session = self.Session()
        try:
            borrowing = session.query(Borrowing).filter_by(
                book_id=book_id, 
                member_id=member_id
            ).first()
            
            if borrowing:
                book = session.query(Book).filter_by(id=book_id).first()
                book.quantity += 1
                session.delete(borrowing)
                session.commit()
                return True
            else:
                print("No active borrowing found.")
                return False
        except Exception as e:
            session.rollback()
            print(f"Error returning book: {e}")
            return False
        finally:
            session.close()

    def search_books(self, title=None, author=None):
        session = self.Session()
        try:
            query = session.query(Book)
            if title:
                query = query.filter(Book.title.ilike(f'%{title}%'))
            if author:
                query = query.filter(Book.author.ilike(f'%{author}%'))
            return query.all()
        except Exception as e:
            print(f"Error searching books: {e}")
            return []
        finally:
            session.close()

def main():
    library = LibraryManagementSystem()

    # Add books
    book1_id = library.add_book("Python Programming", "John Smith", "1234567890", 5)
    book2_id = library.add_book("Database Management", "Jane Doe", "0987654321", 3)

    # Add members
    member1_id = library.add_member("Alice", "alice@example.com", "1234567890")
    member2_id = library.add_member("Bob", "bob@example.com", "0987654321")

    # Borrow book
    library.borrow_book(book1_id, member1_id)

    # Search books
    python_books = library.search_books(title="Python")
    print("Python Books:", [(book.title, book.author) for book in python_books])

    # Return book
    library.return_book(book1_id, member1_id)

if __name__ == "__main__":
    main()
