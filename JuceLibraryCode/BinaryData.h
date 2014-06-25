/* =========================================================================================

   This is an auto-generated file: Any edits you make may be overwritten!

*/

#ifndef BINARYDATA_H_19544556_INCLUDED
#define BINARYDATA_H_19544556_INCLUDED

namespace BinaryData
{
    extern const char*   tex2_png;
    const int            tex2_pngSize = 763486;

    extern const char*   LICENSE_txt;
    const int            LICENSE_txtSize = 32006;

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

    extern const char*   LICENSE_txt2;
    const int            LICENSE_txt2Size = 32004;

    // Points to the start of a list of resource names.
    extern const char* namedResourceList[];

    // Number of elements in the namedResourceList array.
    const int namedResourceListSize = 8;

    // If you provide the name of one of the binary resource variables above, this function will
    // return the corresponding data and its size (or a null pointer if the name isn't found).
    const char* getNamedResource (const char* resourceNameUTF8, int& dataSizeInBytes) throw();
}

#endif
