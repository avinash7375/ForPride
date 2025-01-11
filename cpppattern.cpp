#include <iostream>
#include <vector>
#include <cmath>
#include <cstdlib> // For system("clear") or system("cls")

class SimpleGraphics {
private:
    int width, height;
    std::vector<std::vector<char>> buffer;

    // Clears the console screen
    void clearScreen() {
#ifdef _WIN32
        system("cls");
#else
        system("clear");
#endif
    }

public:
    // Constructor: Initialize the screen size and buffer
    SimpleGraphics(int w, int h) : width(w), height(h) {
        buffer.resize(height, std::vector<char>(width, ' '));
    }

    // Sets a pixel in the buffer
    void setPixel(int x, int y, char c = '*') {
        if (x >= 0 && x < width && y >= 0 && y < height) {
            buffer[y][x] = c;
        }
    }

    // Draws a line using Bresenham's algorithm
    void drawLine(int x1, int y1, int x2, int y2, char c = '*') {
        int dx = std::abs(x2 - x1);
        int dy = std::abs(y2 - y1);
        int sx = (x1 < x2) ? 1 : -1;
        int sy = (y1 < y2) ? 1 : -1;
        int err = dx - dy;

        while (true) {
            setPixel(x1, y1, c);
            if (x1 == x2 && y1 == y2)
                break;
            int e2 = 2 * err;
            if (e2 > -dy) {
                err -= dy;
                x1 += sx;
            }
            if (e2 < dx) {
                err += dx;
                y1 += sy;
            }
        }
    }

    // Draws a circle using the Midpoint Circle Algorithm
    void drawCircle(int cx, int cy, int r, char c = '*') {
        int x = r, y = 0;
        int err = 0;

        while (x >= y) {
            setPixel(cx + x, cy + y, c);
            setPixel(cx + y, cy + x, c);
            setPixel(cx - y, cy + x, c);
            setPixel(cx - x, cy + y, c);
            setPixel(cx - x, cy - y, c);
            setPixel(cx - y, cy - x, c);
            setPixel(cx + y, cy - x, c);
            setPixel(cx + x, cy - y, c);

            y += 1;
            if (err <= 0) {
                err += 2 * y + 1;
            } else {
                x -= 1;
                err += 2 * (y - x) + 1;
            }
        }
    }

    // Clears the buffer
    void clearBuffer() {
        for (auto& row : buffer) {
            std::fill(row.begin(), row.end(), ' ');
        }
    }

    // Renders the buffer to the console
    void render() {
        clearScreen();
        for (const auto& row : buffer) {
            for (char pixel : row) {
                std::cout << pixel;
            }
            std::cout << '\n';
        }
    }
};

int main() {
    int width = 80, height = 25;
    SimpleGraphics gfx(width, height);

    // Example usage
    gfx.drawLine(10, 10, 70, 20);
    gfx.drawCircle(40, 12, 8);
    gfx.render();

    return 0;
}
