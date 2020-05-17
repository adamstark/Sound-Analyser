/* =========================================================================================

   This is an auto-generated file: Any edits you make may be overwritten!

*/

#pragma once

namespace BinaryData
{
    extern const char*   LatoBlack_ttf;
    const int            LatoBlack_ttfSize = 69484;

    extern const char*   LatoBlackItalic_ttf;
    const int            LatoBlackItalic_ttfSize = 71948;

    extern const char*   LatoBold_ttf;
    const int            LatoBold_ttfSize = 73316;

    extern const char*   LatoBoldItalic_ttf;
    const int            LatoBoldItalic_ttfSize = 77680;

    extern const char*   LatoItalic_ttf;
    const int            LatoItalic_ttfSize = 75744;

    extern const char*   LatoLight_ttf;
    const int            LatoLight_ttfSize = 77192;

    extern const char*   LatoLightItalic_ttf;
    const int            LatoLightItalic_ttfSize = 49064;

    extern const char*   LatoRegular_ttf;
    const int            LatoRegular_ttfSize = 75136;

    extern const char*   LatoThin_ttf;
    const int            LatoThin_ttfSize = 69968;

    extern const char*   LatoThinItalic_ttf;
    const int            LatoThinItalic_ttfSize = 48848;

    extern const char*   OFL_txt;
    const int            OFL_txtSize = 4500;

    extern const char*   tex2_png;
    const int            tex2_pngSize = 763486;

    extern const char*   COPYING;
    const int            COPYINGSize = 1475;

    extern const char*   README;
    const int            READMESize = 5627;

    extern const char*   AUTHORS;
    const int            AUTHORSSize = 502;

    extern const char*   COPYING2;
    const int            COPYING2Size = 1774;

    extern const char*   README2;
    const int            README2Size = 591;

    extern const char*   LICENSE_txt;
    const int            LICENSE_txtSize = 32004;

    extern const char*   README3;
    const int            README3Size = 217;

    // Number of elements in the namedResourceList and originalFileNames arrays.
    const int namedResourceListSize = 19;

    // Points to the start of a list of resource names.
    extern const char* namedResourceList[];

    // Points to the start of a list of resource filenames.
    extern const char* originalFilenames[];

    // If you provide the name of one of the binary resource variables above, this function will
    // return the corresponding data and its size (or a null pointer if the name isn't found).
    const char* getNamedResource (const char* resourceNameUTF8, int& dataSizeInBytes);

    // If you provide the name of one of the binary resource variables above, this function will
    // return the corresponding original, non-mangled filename (or a null pointer if the name isn't found).
    const char* getNamedResourceOriginalFilename (const char* resourceNameUTF8);
}
