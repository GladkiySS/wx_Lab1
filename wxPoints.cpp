#include "wxPoints.h"
#include <stdexcept>
#include <wx/arrimpl.cpp>

WX_DEFINE_OBJARRAY(XYZArray);

wxPoints::wxPoints(){}

wxPoints::~wxPoints(){}

wxPoints::wxPoints(const wxPoints& other)
{
    data = other.data;
}

int wxPoints::count() const {
    return data.size();
}

void wxPoints::addPoint(const XYZ& point) {
    data.push_back(point);
}

XYZ wxPoints::getPoint(int index) const {
    if (index >= 0 && index < count()) {
        return data[index];
    }
    throw std::out_of_range("Index out of range");
}

XYZ wxPoints::operator[](int index) const {
    return getPoint(index);
}

void wxPoints::clear() {
    data.Clear();
}

void wxPoints::print() const {
    for (size_t i = 0; i < data.size(); ++i) {
        data[i].print();
    }
}
