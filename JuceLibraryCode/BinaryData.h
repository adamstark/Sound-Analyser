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

    extern const char*   README;
    const int            READMESize = 5627;

    extern const char*   README_simd;
    const int            README_simdSize = 2419;

    extern const char*   TIPS;
    const int            TIPSSize = 2126;

    extern const char*   tex1_png;
    const int            tex1_pngSize = 513054;

    extern const char*   tex2_png;
    const int            tex2_pngSize = 763486;

    extern const char*   TenorSansRegular_ttf;
    const int            TenorSansRegular_ttfSize = 131896;

    extern const char*   CHANGES;
    const int            CHANGESSize = 7360;

    extern const char*   CMakeLists_txt;
    const int            CMakeLists_txtSize = 1982;

    extern const char*   LICENSE;
    const int            LICENSESize = 1661;

    extern const char*   make_MinGW32_bat;
    const int            make_MinGW32_batSize = 1343;

    extern const char*   Makefile;
    const int            MakefileSize = 5029;

    extern const char*   README2;
    const int            README2Size = 5381;

    extern const char*   TODO;
    const int            TODOSize = 2330;

    // Points to the start of a list of resource names.
    extern const char* namedResourceList[];

    // Number of elements in the namedResourceList array.
    const int namedResourceListSize = 15;

    // If you provide the name of one of the binary resource variables above, this function will
    // return the corresponding data and its size (or a null pointer if the name isn't found).
    const char* getNamedResource (const char* resourceNameUTF8, int& dataSizeInBytes) throw();
}

#endif
