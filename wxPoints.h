#ifndef WXPOINTS_H
#define WXPOINTS_H

#include "XYZ.h"

class wxPoints
{
    public:
        wxPoints();
        virtual ~wxPoints();
        wxPoints(const wxPoints& other);

        int count() const;
        void addPoint(const XYZ& point);
        XYZ getPoint(int index) const;
        XYZ operator[](int index) const;
        void clear();
        void print() const;

    protected:

    private:
        XYZArray data;
};

#endif // WXPOINTS_H
