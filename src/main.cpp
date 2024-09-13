#include <iostream>
#include <array>
#include <fstream>
#include "image.h"

using namespace std;

int main() {
    ofstream MyFile("export.jpg", ios::out  | ios::binary);
    const auto size = sizeof(GitHub_logo_jpg)/sizeof(GitHub_logo_jpg[0]);
    std::cout << size;
    MyFile.write(reinterpret_cast<const char *>(GitHub_logo_jpg), size);
    MyFile.close();
}