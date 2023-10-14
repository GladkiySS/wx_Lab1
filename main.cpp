#include <wx/wx.h>
#include <iostream>
#include "wxPoints.h"

void printPoints(wxPoints points){
    std::cout << "Number of points: " << points.count() << std::endl;
    std::cout << "Points: " << std::endl;
    points.print();
    std::cout << std::endl;
}

int main(){
    wxPoints points;

    points.addPoint(XYZ(12.5, 18.2, 27));
    points.addPoint(XYZ(4.93, 23.1, 94.12));

    printPoints(points);

    points[1].print();

    points.clear();

    printPoints(points);

    return 0;
}
