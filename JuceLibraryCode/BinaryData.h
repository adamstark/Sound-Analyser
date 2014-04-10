/* =========================================================================================

   This is an auto-generated file: Any edits you make may be overwritten!

*/

#ifndef BINARYDATA_H_19544556_INCLUDED
#define BINARYDATA_H_19544556_INCLUDED

namespace BinaryData
{
    extern const char*   CHANGELOG;
    const int            CHANGELOGSize = 5070;

    extern const char*   COPYING;
    const int            COPYINGSize = 1475;

    extern const char*   Makefile;
    const int            MakefileSize = 1437;

    extern const char*   README;
    const int            READMESize = 5627;

    extern const char*   README_simd;
    const int            README_simdSize = 2419;

    extern const char*   tex2_png;
    const int            tex2_pngSize = 763486;

    extern const char*   LICENSE;
    const int            LICENSESize = 1661;

    extern const char*   make_MinGW32_bat;
    const int            make_MinGW32_batSize = 1343;

    extern const char*   Makefile2;
    const int            Makefile2Size = 5029;

    extern const char*   README2;
    const int            README2Size = 5381;

    extern const char*   TODO;
    const int            TODOSize = 2330;

    // Points to the start of a list of resource names.
    extern const char* namedResourceList[];

    // Number of elements in the namedResourceList array.
    const int namedResourceListSize = 11;

    // If you provide the name of one of the binary resource variables above, this function will
    // return the corresponding data and its size (or a null pointer if the name isn't found).
    const char* getNamedResource (const char* resourceNameUTF8, int& dataSizeInBytes) throw();
}

#endif
