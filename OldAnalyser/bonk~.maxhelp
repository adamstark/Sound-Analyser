{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 106.0, 48.0, 743.0, 730.0 ],
		"bglocked" : 0,
		"defrect" : [ 106.0, 48.0, 743.0, 730.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rdsp stop",
					"linecount" : 2,
					"id" : "obj-37",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 41.0, 626.0, 54.0, 31.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "bonk~",
					"id" : "obj-40",
					"numinlets" : 1,
					"fontname" : "Arial",
					"frgb" : [ 0.2, 0.2, 0.2, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 8.0, 485.0, 30.0 ],
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_digest",
					"text" : "Detect attacks in an incoming signal",
					"id" : "obj-41",
					"numinlets" : 1,
					"fontname" : "Arial",
					"frgb" : [ 0.2, 0.2, 0.2, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 32.0, 485.0, 21.0 ],
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontsize" : 12.754705
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "There is also a temlpate-matching feature for idenifying different sounds - this isn't documented here yet but is as it was in earlier versions.",
					"linecount" : 2,
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 219.0, 487.0, 33.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "turn \"spew\" mode on or off",
					"id" : "obj-2",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 126.0, 387.0, 204.0, 20.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "spew 0",
					"id" : "obj-3",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 68.0, 387.0, 52.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "minimum \"velocity\" to trigger",
					"id" : "obj-4",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 133.0, 362.0, 204.0, 20.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "minvel 7",
					"id" : "obj-5",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 66.0, 361.0, 62.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "masking from earlier analyses",
					"id" : "obj-6",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 143.0, 339.0, 205.0, 20.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mask 4 0.7",
					"id" : "obj-7",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 66.0, 337.0, 75.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set low and high thresholds",
					"id" : "obj-8",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 143.0, 316.0, 166.0, 20.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "thresh 2.5 5",
					"id" : "obj-9",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 66.0, 314.0, 83.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "output one analysis",
					"id" : "obj-10",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 92.0, 267.0, 165.0, 20.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "print values of parameters",
					"id" : "obj-11",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 292.0, 167.0, 20.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@firstbin (1) - center frequency, in bins, of the lowest filter. The others are computed from this.",
					"linecount" : 2,
					"id" : "obj-12",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 342.0, 623.0, 255.0, 33.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@overlap (1) - overlap factor between filters. If 1, the filters are spaced to line up at their half-power points. Other values specify more or fewer filters proportionally.",
					"linecount" : 3,
					"id" : "obj-13",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 342.0, 582.0, 299.0, 47.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@minbandwidth (1.5) - minimum bandwidth in bins. If the bandwidth specified by \"halftones\" is smaller than this, this value is used. This must be at least 1.5.",
					"linecount" : 3,
					"id" : "obj-14",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 342.0, 539.0, 285.0, 47.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"id" : "obj-15",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 66.0, 291.0, 39.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@halftones (6) - desired bandwidth of filters in halftones, effective in the exponentially spaced region. (At lower center frequencies the bandwidth is supported by the \"minbandwidth\" parameter below).",
					"linecount" : 4,
					"id" : "obj-16",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 342.0, 483.0, 282.0, 60.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@nfilters - limit number of filters to use",
					"id" : "obj-17",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 342.0, 466.0, 337.0, 20.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@hop (128) - interval between analyses (power of 2)",
					"id" : "obj-18",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 342.0, 447.0, 348.0, 20.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@npoints (256) - number of samples in analysis (power of 2)",
					"id" : "obj-19",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 342.0, 429.0, 365.0, 20.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Max/MSP port by Ted Apel and Barry Threw.",
					"id" : "obj-20",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 676.0, 404.0, 20.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Available from crca.ucsd.edu/~msp. Open source, BSD license.",
					"id" : "obj-21",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 692.0, 389.0, 20.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print attributes",
					"id" : "obj-23",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 155.0, 506.0, 100.0, 20.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-24",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 67.0, 266.0, 18.0, 18.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print cooked-out",
					"id" : "obj-25",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 101.0, 533.0, 107.0, 20.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print raw-out",
					"id" : "obj-26",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 46.0, 558.0, 90.0, 20.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-27",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 97.0, 446.0, 19.0, 19.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"id" : "obj-28",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 61.0, 445.0, 33.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~ 440",
					"id" : "obj-29",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 61.0, 420.0, 76.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bonk~ @npoints 256",
					"id" : "obj-30",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 46.0, 475.0, 128.0, 20.0 ],
					"outlettype" : [ "list", "list", "" ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rdsp start",
					"linecount" : 2,
					"id" : "obj-31",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 41.0, 592.0, 64.0, 31.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "creation args / settable attributes:",
					"linecount" : 2,
					"id" : "obj-32",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 178.0, 464.0, 141.0, 33.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bonk~ uses a filterbank whose center frequencies are spaced equally at low frequencies and proportionally at high ones - i.e., they increase linearly, then exponentially. They are determined by the filters' bandwidths and overlap. The bandwidths are specified proportionally to frequency but bounded below by a specified minimum.",
					"linecount" : 6,
					"id" : "obj-33",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 341.0, 263.0, 306.0, 87.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "All frequency parameters are specified in 'bins'. One bin is the sample rate divided by the window size. The minimum possible bandwidth is 1.5 bins. Higher bandwidths give numerically more robust outputs.",
					"linecount" : 4,
					"id" : "obj-34",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 341.0, 347.0, 310.0, 60.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The bonk~ object takes an audio signal input and looks for \"attacks\" defined as sharp changes in the spectral envelope of the incoming sound. Optionally, and less reliably, you can have bonk~ check the attack against a collection of stored templates to try to guess which of two or more instruments was hit. Bonk is described theoretically in the 1998 ICMC proceedings, reprinted on crca.ucsd.edu/~msp.",
					"linecount" : 5,
					"id" : "obj-35",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 55.0, 496.0, 73.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bonk's two outputs are the raw spectrum of the attack (provided as a list of 11 numbers giving the signal \"loudness\" in the 11 frequency bands used), and the \"cooked\" output which gives only an instrument number (counting up from zero) and a \"velocity\". This \"velocity\" is the sum of the square roots of the amplitudes of the bands, normalized so that 100 is an attack of amplitude of about 1. The instrument number is significant only if Bonk has a \"template set\" in memory.",
					"linecount" : 6,
					"id" : "obj-36",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 4.683013, 130.0, 486.0, 87.0 ],
					"fontsize" : 11.600006
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel[2]",
					"id" : "obj-38",
					"numinlets" : 1,
					"grad1" : [ 0.682353, 0.776471, 0.823529, 1.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 4.0, 495.0, 52.0 ],
					"grad2" : [ 0.9, 0.9, 0.9, 1.0 ],
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-30", 2 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 75.5, 311.0, 46.0, 311.0, 46.0, 472.0, 55.5, 472.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 76.5, 286.0, 46.0, 286.0, 46.0, 472.0, 55.5, 472.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 75.5, 357.0, 46.0, 357.0, 46.0, 472.0, 55.5, 472.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 75.5, 334.0, 46.0, 334.0, 46.0, 472.0, 55.5, 472.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 75.5, 381.0, 46.0, 381.0, 46.0, 472.0, 55.5, 472.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 77.5, 408.0, 46.0, 408.0, 46.0, 472.0, 55.5, 472.0 ]
				}

			}
 ]
	}

}
