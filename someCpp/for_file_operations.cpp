#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main() {
    // File to write data to
    string filename = "example.txt";

    // Write to a file
    ofstream outfile(filename);  // Open file for writing
    if (!outfile) {  // Check if file is opened successfully
        cerr << "Error opening file for writing!" << endl;
        return 1;
    }

    outfile << "This is the first line of text." << endl;
    outfile << "Here is another line of text!" << endl;
    cout << "Data written to file." << endl;
    outfile.close();  // Close the file after writing

    // Read from the file
    ifstream infile(filename);  // Open file for reading
    if (!infile) {  // Check if file is opened successfully
        cerr << "Error opening file for reading!" << endl;
        return 1;
    }

    string line;
    cout << "\nReading the file content:\n";
    while (getline(infile, line)) {  // Read each line from the file
        cout << line << endl;
    }
    infile.close();  // Close the file after reading

    // Append to the file
    ofstream appendfile(filename, ios::app);  // Open file in append mode
    if (!appendfile) {
        cerr << "Error opening file for appending!" << endl;
        return 1;
    }

    appendfile << "This is a new line added via append operation." << endl;
    cout << "\nData appended to the file." << endl;
    appendfile.close();  // Close the file after appending

    // Read the file again to see the appended data
    infile.open(filename);  // Reopen the file for reading
    if (!infile) {
        cerr << "Error opening file for reading!" << endl;
        return 1;
    }

    cout << "\nReading the updated file content (after appending):\n";
    while (getline(infile, line)) {
        cout << line << endl;
    }
    infile.close();  // Close the file after reading

    return 0;
}
