{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 27.0, 79.0, 690.0, 255.0 ],
		"bglocked" : 0,
		"defrect" : [ 27.0, 79.0, 690.0, 255.0 ],
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
					"maxclass" : "inlet",
					"varname" : "in[1]",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 226.0, 42.0, 25.0, 25.0 ],
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"comment" : "Messages for zsa.slope~"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This abstraction automatically creates the appropriate pfft object with the correct window size and step size. Its only goal is to provide an easy way of getting an unique descriptor. If you want to use multiple descriptors at once, create your own pfft~ abstraction.",
					"linecount" : 3,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 109.0, 178.0, 556.0, 48.0 ],
					"id" : "obj-37",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend script replace pfft newex 0 0 200 12 pfft~ zsa.abs_slope~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 308.0, 100.0, 361.0, 20.0 ],
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 308.0, 133.0, 69.0, 20.0 ],
					"id" : "obj-5",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs 2048 4",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 308.0, 70.0, 114.0, 20.0 ],
					"id" : "obj-3",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "out",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 201.0, 25.0, 25.0 ],
					"id" : "obj-2",
					"comment" : "(signal) Slope"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"varname" : "in",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 42.0, 25.0, 25.0 ],
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"comment" : "Signal In"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "pfft",
					"text" : "pfft~ zsa.abs_slope~ 2048 4",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 99.0, 200.0, 20.0 ],
					"id" : "obj-4",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
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
, 			{
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
 ]
	}

}
