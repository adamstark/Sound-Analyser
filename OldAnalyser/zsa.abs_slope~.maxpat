{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 404.0, 183.0, 350.0, 310.0 ],
		"bglocked" : 0,
		"defrect" : [ 404.0, 183.0, 350.0, 310.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Messsages",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 16.0, 71.0, 20.0 ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in 2",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 260.0, 40.0, 30.0, 20.0 ],
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"saved_object_attributes" : 					{
						"attr_comment" : [ "Messages", "for", "zsa.slope~" ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "correct the windowing",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 140.0, 171.0, 150.0, 20.0 ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 112.0, 198.0, 50.0, 20.0 ],
					"id" : "obj-11",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "!/ 1.",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 90.0, 172.0, 35.5, 20.0 ],
					"id" : "obj-4",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "fftinfo~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 72.0, 138.0, 71.5, 20.0 ],
					"id" : "obj-7",
					"outlettype" : [ "int", "int", "int", "int" ],
					"fontname" : "Arial",
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 49.0, 199.0, 59.5, 20.0 ],
					"id" : "obj-8",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "fftout~ 1 nofft",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 256.0, 79.0, 20.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "slope",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 255.0, 150.0, 20.0 ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "fft analysis",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 16.0, 67.0, 20.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "fftin~ 1",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 49.0, 40.0, 117.0, 20.0 ],
					"id" : "obj-2",
					"outlettype" : [ "signal", "signal", "signal" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zsa.slope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 49.0, 111.0, 68.0, 20.0 ],
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [ 107.5, 78.5, 107.5, 78.5 ]
				}

			}
 ]
	}

}
