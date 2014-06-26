Sound Analyser
==============

Sound Analyser is an audio plug-in for performing real-time audio analysis inside host applications such as Ableton Live or Logic Pro, and sending the result over Open Sound Control (OSC) so that the data can be used for sound-responsive applications. 

The driving motivation behind Sound Analyser is to allow anyone to quickly set up and experiment with different audio analysis algorithms. Some of the key benefits are:

* Use in multiple hosts (e.g. Ableton Live, Max, Logic Pro)
* No programming (on the audio analysis side)
* Multi-track audio analysis via multiple plug-in instances on different tracks
* Perform audio analysis on one computer and send the result to another, directly from the plug-in
* Preferences stored with the host application, and reloaded when you open your project

Author
------

Sound Analyser is written and maintained by Adam Stark. The plug-in allows audio analysis algorithms from multiple authors to be implemented into the same framework, and acknowledges authorship within the GUI of the software for any third party algorithms. 

Sound Analyser Website
----------------------

* [http://www.adamstark.co.uk](http://www.adamstark.co.uk)


Academic Papers
---------------

The Sound Analyser plug-in is described in the following paper:

* Adam M. Stark, "Sound Analyser: A Plug-In For Real-Time Audio Analysis In Live Performances And Installations", In Proceedings of New Interfaces for Musical Expression (NIME), London, 2014

Adding New Audio Algorithms To Sound Analyser
---------------------------------------------

Please extend the AudioAnalysis class in AudioAnalysis.h, and then add your new audio analysis in the function:

	void addAudioAnalysisAlgorithms();

found in:

AudioAnalysisManager.h

Version History
---------------

=== 1.0.0 ===

The first version of Sound Analyser


Dependencies
------------

The plug-in depends on a number of libraries:

* JUCE ([http://www.juce.com/](http://www.juce.com/))
* Speex [just the resampling part] ([http://www.speex.org/](http://www.speex.org/))

And, for the FFT, either:

* FFTW ([http://fftw.org/](http://fftw.org/))

or

* Kiss FFT ([http://kissfft.sourceforge.net/](http://kissfft.sourceforge.net/))


Note on compiler flags:

* To use FFTW, add the flag -DUSE_FFTW
* To use KISS FFT add the flag -DUSE_KISS_FFT
* (Don't add them both together!)




License
-------

Copyright (c) 2014 Adam Stark

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

Acknowledgements
----------------

The background texture used for the Sound Analyser was sourced from:

http://www.mayang.com/textures