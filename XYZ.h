#ifndef XYZ_H
#define XYZ_H

#include <wx/dynarray.h>

class XYZ
{
    public:
        double x;
        double y;
        double z;

        XYZ(double x = 0.0, double y = 0.0, double z = 0.0);

        void print() const;
};


WX_DECLARE_OBJARRAY(XYZ, XYZArray);

#endif // XYZ_H
