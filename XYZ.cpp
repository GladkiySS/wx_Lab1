#include "XYZ.h"
#include <iostream>

XYZ::XYZ(double x, double y, double z) : x(x), y(y), z(z) {}

void XYZ::print() const
{
    std::cout << "X: " << x
        << "\nY: " << y
        << "\nZ: " << z << std::endl;
}
