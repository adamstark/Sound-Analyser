{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 38.0, 56.0, 688.0, 266.0 ],
		"bglocked" : 0,
		"defrect" : [ 38.0, 56.0, 688.0, 266.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This abstraction automatically creates the appropriate pfft object with the correct window size and step size. Its only goal is to provide an easy way of getting an unique descriptor. If you want to use multiple descriptors at once, create your own pfft~ abstraction.",
					"linecount" : 3,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 81.0, 189.0, 589.0, 48.0 ],
					"numoutlets" : 0,
					"id" : "obj-37",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend script replace pfft newex 0 0 200 12 pfft~ zsa.abs_freqpeak~",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 280.0, 111.0, 379.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-10",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 280.0, 144.0, 69.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-5",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs 2048 4",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 280.0, 81.0, 114.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-3",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 226.0, 50.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"comment" : "Messages for zsa.freqpeak~"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "out",
					"numinlets" : 1,
					"patching_rect" : [ 45.0, 204.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-2",
					"comment" : "(list) Freq1 Amp1 Freq2 Amp2..."
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"varname" : "in",
					"numinlets" : 0,
					"patching_rect" : [ 45.0, 50.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"comment" : "Signal In"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "pfft",
					"text" : "pfft~ zsa.abs_freqpeak~ 2048 4",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 45.0, 110.0, 200.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
