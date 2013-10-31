{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 16.0, 44.0, 1526.0, 726.0 ],
		"bglocked" : 0,
		"defrect" : [ 16.0, 44.0, 1526.0, 726.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 1.",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 2490.0, 1140.0, 32.5, 20.0 ],
					"id" : "obj-75",
					"fontname" : "Arial",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 2445.0, 1230.0, 50.0, 20.0 ],
					"id" : "obj-74",
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 1000.",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 2520.0, 1200.0, 47.0, 20.0 ],
					"id" : "obj-58",
					"fontname" : "Arial",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Max Vol Thresh",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2524.0, 958.0, 119.0, 18.0 ],
					"id" : "obj-9",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 2520.0, 1170.0, 50.0, 20.0 ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1000.",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 2509.0, 928.0, 95.0, 20.0 ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 2520.0, 1230.0, 50.0, 20.0 ],
					"id" : "obj-50",
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 200.",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 2475.0, 1200.0, 41.0, 20.0 ],
					"id" : "obj-53",
					"fontname" : "Arial",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numinlets" : 1,
					"size" : 1000.0,
					"numoutlets" : 1,
					"patching_rect" : [ 2520.0, 990.0, 40.0, 142.0 ],
					"id" : "obj-54",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s maxVolThresh",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2475.0, 1260.0, 97.0, 20.0 ],
					"id" : "obj-57",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r presetChoice",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 1080.0, 1350.0, 89.0, 20.0 ],
					"id" : "obj-165",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC4",
					"fontsize" : 10.0,
					"presentation_rect" : [ 435.0, 810.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 1590.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-166",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC3",
					"fontsize" : 10.0,
					"presentation_rect" : [ 330.0, 810.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 1590.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-167",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC2",
					"fontsize" : 10.0,
					"presentation_rect" : [ 240.0, 810.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 1590.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-168",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC1",
					"fontsize" : 10.0,
					"presentation_rect" : [ 150.0, 810.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 1590.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-169",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 480.0, 810.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 1620.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-170",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 375.0, 810.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 165.0, 1620.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-171",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 285.0, 810.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 1620.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-172",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 195.0, 810.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 1620.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-173",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 1665.0, 34.0, 20.0 ],
					"id" : "obj-174",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 165.0, 1665.0, 34.0, 20.0 ],
					"id" : "obj-175",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 1665.0, 34.0, 20.0 ],
					"id" : "obj-176",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 1665.0, 34.0, 20.0 ],
					"id" : "obj-177",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc4",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 1695.0, 45.0, 20.0 ],
					"id" : "obj-178",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc3",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 1695.0, 45.0, 20.0 ],
					"id" : "obj-179",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc2",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 1695.0, 45.0, 20.0 ],
					"id" : "obj-180",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc1",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 1695.0, 45.0, 20.0 ],
					"id" : "obj-181",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 12.0,
					"presentation_rect" : [ 15.0, 810.0, 119.090912, 20.0 ],
					"numinlets" : 1,
					"items" : [ "Off", ",", "Input", 1, ",", "Input", 2, ",", "Input", 3, ",", "Input", 4, ",", "Input", 5, ",", "Input", 6, ",", "Input", 7, ",", "Input", 8, ",", "Sound", "File" ],
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 15.0, 1335.0, 122.727272, 20.0 ],
					"presentation" : 1,
					"id" : "obj-182",
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p audioIn",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 1365.0, 60.0, 20.0 ],
					"id" : "obj-183",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 122.0, 133.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 122.0, 133.0, 640.0, 480.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 120.0, 240.0, 25.0, 25.0 ],
									"id" : "obj-24",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 15.0, 25.0, 25.0 ],
									"id" : "obj-23",
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "receive~ sound_file",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 435.0, 90.0, 114.0, 20.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 120.0, 120.0, 32.5, 18.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "selector~ 9",
									"fontsize" : 12.0,
									"numinlets" : 10,
									"numoutlets" : 1,
									"patching_rect" : [ 120.0, 165.0, 334.5, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adc~ 1 2 3 4 5 6 7 8",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 8,
									"patching_rect" : [ 150.0, 90.0, 264.0, 20.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 1 9",
									"fontsize" : 12.0,
									"numinlets" : 3,
									"numoutlets" : 2,
									"patching_rect" : [ 45.0, 90.0, 52.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 45.0, 60.0, 50.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 7 ],
									"destination" : [ "obj-20", 8 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 6 ],
									"destination" : [ "obj-20", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 5 ],
									"destination" : [ "obj-20", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 4 ],
									"destination" : [ "obj-20", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 3 ],
									"destination" : [ "obj-20", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-20", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-20", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-20", 9 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "Analyser_channel[2]",
					"args" : [  ],
					"presentation_rect" : [ 15.0, 840.0, 1313.0, 178.0 ],
					"numinlets" : 4,
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 1395.0, 1187.0, 182.0 ],
					"presentation" : 1,
					"id" : "obj-184",
					"outlettype" : [ "" ],
					"name" : "Analyser_channel_horz.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r presetChoice",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 1080.0, 945.0, 89.0, 20.0 ],
					"id" : "obj-185",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC4",
					"fontsize" : 10.0,
					"presentation_rect" : [ 435.0, 585.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 1185.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-186",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC3",
					"fontsize" : 10.0,
					"presentation_rect" : [ 330.0, 585.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 1185.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-187",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC2",
					"fontsize" : 10.0,
					"presentation_rect" : [ 240.0, 585.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 1185.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-188",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC1",
					"fontsize" : 10.0,
					"presentation_rect" : [ 150.0, 585.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 1185.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-189",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 480.0, 585.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 1215.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-190",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 375.0, 585.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 165.0, 1215.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-191",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 285.0, 585.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 1215.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-192",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 195.0, 585.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 1215.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-193",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 1260.0, 34.0, 20.0 ],
					"id" : "obj-194",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 165.0, 1260.0, 34.0, 20.0 ],
					"id" : "obj-195",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 1260.0, 34.0, 20.0 ],
					"id" : "obj-196",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 1260.0, 34.0, 20.0 ],
					"id" : "obj-197",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc4",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 1290.0, 45.0, 20.0 ],
					"id" : "obj-198",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc3",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 1290.0, 45.0, 20.0 ],
					"id" : "obj-199",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc2",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 1290.0, 45.0, 20.0 ],
					"id" : "obj-200",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc1",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 1290.0, 45.0, 20.0 ],
					"id" : "obj-201",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 12.0,
					"presentation_rect" : [ 15.0, 585.0, 119.090912, 20.0 ],
					"numinlets" : 1,
					"items" : [ "Off", ",", "Input", 1, ",", "Input", 2, ",", "Input", 3, ",", "Input", 4, ",", "Input", 5, ",", "Input", 6, ",", "Input", 7, ",", "Input", 8, ",", "Sound", "File" ],
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 15.0, 930.0, 122.727272, 20.0 ],
					"presentation" : 1,
					"id" : "obj-202",
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p audioIn",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 960.0, 60.0, 20.0 ],
					"id" : "obj-203",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 122.0, 133.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 122.0, 133.0, 640.0, 480.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 120.0, 240.0, 25.0, 25.0 ],
									"id" : "obj-24",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 15.0, 25.0, 25.0 ],
									"id" : "obj-23",
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "receive~ sound_file",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 435.0, 90.0, 114.0, 20.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 120.0, 120.0, 32.5, 18.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "selector~ 9",
									"fontsize" : 12.0,
									"numinlets" : 10,
									"numoutlets" : 1,
									"patching_rect" : [ 120.0, 165.0, 334.5, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adc~ 1 2 3 4 5 6 7 8",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 8,
									"patching_rect" : [ 150.0, 90.0, 264.0, 20.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 1 9",
									"fontsize" : 12.0,
									"numinlets" : 3,
									"numoutlets" : 2,
									"patching_rect" : [ 45.0, 90.0, 52.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 45.0, 60.0, 50.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-20", 9 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-20", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-20", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 3 ],
									"destination" : [ "obj-20", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 4 ],
									"destination" : [ "obj-20", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 5 ],
									"destination" : [ "obj-20", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 6 ],
									"destination" : [ "obj-20", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 7 ],
									"destination" : [ "obj-20", 8 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "Analyser_channel[3]",
					"args" : [  ],
					"presentation_rect" : [ 15.0, 615.0, 1313.0, 178.0 ],
					"numinlets" : 4,
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 990.0, 1187.0, 182.0 ],
					"presentation" : 1,
					"id" : "obj-204",
					"outlettype" : [ "" ],
					"name" : "Analyser_channel_horz.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r presetChoice",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 1080.0, 540.0, 89.0, 20.0 ],
					"id" : "obj-145",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC4",
					"fontsize" : 10.0,
					"presentation_rect" : [ 435.0, 360.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 780.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-146",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC3",
					"fontsize" : 10.0,
					"presentation_rect" : [ 330.0, 360.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 780.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-147",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC2",
					"fontsize" : 10.0,
					"presentation_rect" : [ 240.0, 360.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 780.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-148",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC1",
					"fontsize" : 10.0,
					"presentation_rect" : [ 150.0, 360.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 780.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-149",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 480.0, 360.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 810.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-150",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 375.0, 360.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 165.0, 810.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-151",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 285.0, 360.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 810.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-152",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 195.0, 360.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 810.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-153",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 855.0, 34.0, 20.0 ],
					"id" : "obj-154",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 165.0, 855.0, 34.0, 20.0 ],
					"id" : "obj-155",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 855.0, 34.0, 20.0 ],
					"id" : "obj-156",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 855.0, 34.0, 20.0 ],
					"id" : "obj-157",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc4",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 885.0, 45.0, 20.0 ],
					"id" : "obj-158",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc3",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 885.0, 45.0, 20.0 ],
					"id" : "obj-159",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc2",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 885.0, 45.0, 20.0 ],
					"id" : "obj-160",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc1",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 885.0, 45.0, 20.0 ],
					"id" : "obj-161",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 12.0,
					"presentation_rect" : [ 15.0, 360.0, 119.090912, 20.0 ],
					"numinlets" : 1,
					"items" : [ "Off", ",", "Input", 1, ",", "Input", 2, ",", "Input", 3, ",", "Input", 4, ",", "Input", 5, ",", "Input", 6, ",", "Input", 7, ",", "Input", 8, ",", "Sound", "File" ],
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 15.0, 525.0, 122.727272, 20.0 ],
					"presentation" : 1,
					"id" : "obj-162",
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p audioIn",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 555.0, 60.0, 20.0 ],
					"id" : "obj-163",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 122.0, 133.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 122.0, 133.0, 640.0, 480.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 120.0, 240.0, 25.0, 25.0 ],
									"id" : "obj-24",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 15.0, 25.0, 25.0 ],
									"id" : "obj-23",
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "receive~ sound_file",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 435.0, 90.0, 114.0, 20.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 120.0, 120.0, 32.5, 18.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "selector~ 9",
									"fontsize" : 12.0,
									"numinlets" : 10,
									"numoutlets" : 1,
									"patching_rect" : [ 120.0, 165.0, 334.5, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adc~ 1 2 3 4 5 6 7 8",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 8,
									"patching_rect" : [ 150.0, 90.0, 264.0, 20.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 1 9",
									"fontsize" : 12.0,
									"numinlets" : 3,
									"numoutlets" : 2,
									"patching_rect" : [ 45.0, 90.0, 52.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 45.0, 60.0, 50.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-20", 9 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-20", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-20", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 3 ],
									"destination" : [ "obj-20", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 4 ],
									"destination" : [ "obj-20", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 5 ],
									"destination" : [ "obj-20", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 6 ],
									"destination" : [ "obj-20", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 7 ],
									"destination" : [ "obj-20", 8 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "Analyser_channel[1]",
					"args" : [  ],
					"presentation_rect" : [ 15.0, 390.0, 1313.0, 178.0 ],
					"numinlets" : 4,
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 585.0, 1187.0, 182.0 ],
					"presentation" : 1,
					"id" : "obj-164",
					"outlettype" : [ "" ],
					"name" : "Analyser_channel_horz.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r presetChoice",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 1080.0, 135.0, 89.0, 20.0 ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s presetChoice",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 195.0, 90.0, 91.0, 20.0 ],
					"id" : "obj-16",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Silence Thresh",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2336.0, 937.0, 119.0, 18.0 ],
					"id" : "obj-136",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 2327.0, 1123.0, 50.0, 20.0 ],
					"id" : "obj-135",
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 400.",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 2321.0, 907.0, 89.0, 20.0 ],
					"id" : "obj-134",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 2226.0, 1122.0, 50.0, 20.0 ],
					"id" : "obj-133",
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 40000.",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 2226.0, 1097.0, 54.0, 20.0 ],
					"id" : "obj-130",
					"fontname" : "Arial",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numinlets" : 1,
					"size" : 1000.0,
					"numoutlets" : 1,
					"patching_rect" : [ 2332.0, 969.0, 40.0, 142.0 ],
					"id" : "obj-19",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s silenceThresh",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2229.0, 1152.0, 95.0, 20.0 ],
					"id" : "obj-18",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"mode" : 1,
					"bgoveroncolor" : [ 0.047059, 0.913725, 0.913725, 1.0 ],
					"text" : "Single Play",
					"bgoncolor" : [ 0.047059, 0.913725, 0.913725, 1.0 ],
					"fontsize" : 12.0,
					"presentation_rect" : [ 138.0, 30.0, 80.0, 20.0 ],
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"texton" : "Loop",
					"bgcolor" : [ 0.145098, 0.07451, 0.376471, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 1419.0, 53.0, 100.0, 20.0 ],
					"presentation" : 1,
					"bgovercolor" : [ 0.145098, 0.07451, 0.376471, 1.0 ],
					"id" : "obj-131",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "int" ],
					"textcolor" : [ 0.992157, 0.992157, 0.992157, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 1436.0, 167.0, 20.0, 20.0 ],
					"id" : "obj-129",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "loop $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 1427.0, 216.0, 50.0, 18.0 ],
					"id" : "obj-128",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r osc4",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 1969.0, 938.0, 43.0, 20.0 ],
					"id" : "obj-92",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r osc3",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 1759.0, 938.0, 43.0, 20.0 ],
					"id" : "obj-91",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r osc2",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 1549.0, 938.0, 43.0, 20.0 ],
					"id" : "obj-90",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC4",
					"fontsize" : 10.0,
					"presentation_rect" : [ 435.0, 135.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 375.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-73",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC3",
					"fontsize" : 10.0,
					"presentation_rect" : [ 330.0, 135.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 375.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-72",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC2",
					"fontsize" : 10.0,
					"presentation_rect" : [ 240.0, 135.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 375.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-71",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC1",
					"fontsize" : 10.0,
					"presentation_rect" : [ 150.0, 135.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 375.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-70",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 480.0, 135.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 405.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-69",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 375.0, 135.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 165.0, 405.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-68",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 285.0, 135.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 405.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-67",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 195.0, 135.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 405.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-65",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 450.0, 34.0, 20.0 ],
					"id" : "obj-64",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 165.0, 450.0, 34.0, 20.0 ],
					"id" : "obj-63",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 450.0, 34.0, 20.0 ],
					"id" : "obj-61",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 450.0, 34.0, 20.0 ],
					"id" : "obj-29",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc4",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 480.0, 45.0, 20.0 ],
					"id" : "obj-28",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc3",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 480.0, 45.0, 20.0 ],
					"id" : "obj-26",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc2",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 480.0, 45.0, 20.0 ],
					"id" : "obj-25",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s osc1",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 480.0, 45.0, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r osc1",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 1354.0, 938.0, 43.0, 20.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "4",
					"fontsize" : 10.0,
					"presentation_rect" : [ 878.0, 45.0, 20.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2027.0, 949.0, 19.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-8",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3",
					"fontsize" : 10.0,
					"presentation_rect" : [ 878.0, 30.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1817.0, 949.0, 19.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-7",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2",
					"fontsize" : 10.0,
					"presentation_rect" : [ 675.0, 45.0, 22.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1592.0, 964.0, 19.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-6",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1",
					"fontsize" : 10.0,
					"presentation_rect" : [ 675.0, 30.0, 20.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1417.0, 948.0, 19.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-5",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Audio Settings:",
					"fontsize" : 10.0,
					"presentation_rect" : [ 1050.0, 88.0, 86.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1010.0, 12.0, 150.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-4",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"fontsize" : 12.0,
					"presentation_rect" : [ 1140.0, 88.0, 37.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 795.0, 17.0, 37.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-11",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"fontsize" : 8.0,
					"presentation_rect" : [ 1142.0, 137.0, 28.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 795.0, 45.0, 28.0, 16.0 ],
					"presentation" : 1,
					"id" : "obj-2",
					"hidden" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"presentation_rect" : [ 225.0, 15.0, 74.0, 74.0 ],
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 475.0, 12.0, 45.0, 45.0 ],
					"presentation" : 1,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1354.0, 366.0, 45.0, 45.0 ],
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 1303.0, 231.0, 37.0, 18.0 ],
					"id" : "obj-41",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "send~ sound_file",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1417.0, 374.0, 102.0, 20.0 ],
					"id" : "obj-34",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"text" : "Open File",
					"fontsize" : 12.0,
					"presentation_rect" : [ 30.0, 45.0, 100.0, 20.0 ],
					"numinlets" : 1,
					"texton" : "Stop",
					"numoutlets" : 3,
					"patching_rect" : [ 1275.0, 15.0, 100.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-32",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 1419.0, 331.0, 32.5, 18.0 ],
					"id" : "obj-31",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"mode" : 1,
					"bgoveroncolor" : [ 0.741176, 0.184314, 0.756863, 1.0 ],
					"text" : "Play",
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 12.0,
					"presentation_rect" : [ 30.0, 15.0, 100.0, 20.0 ],
					"numinlets" : 1,
					"texton" : "Stop",
					"bgcolor" : [ 0.133333, 0.913725, 0.047059, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 1395.0, 15.0, 100.0, 20.0 ],
					"presentation" : 1,
					"bgovercolor" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 1364.0, 296.0, 49.0, 20.0 ],
					"id" : "obj-27",
					"fontname" : "Arial",
					"outlettype" : [ "signal", "bang" ],
					"save" : [ "#N", "sfplay~", "", 1, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 12.0,
					"presentation_rect" : [ 15.0, 135.0, 119.090912, 20.0 ],
					"numinlets" : 1,
					"items" : [ "Off", ",", "Input", 1, ",", "Input", 2, ",", "Input", 3, ",", "Input", 4, ",", "Input", 5, ",", "Input", 6, ",", "Input", 7, ",", "Input", 8, ",", "Sound", "File" ],
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 15.0, 120.0, 122.727272, 20.0 ],
					"presentation" : 1,
					"id" : "obj-24",
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p audioIn",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 150.0, 60.0, 20.0 ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 122.0, 133.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 122.0, 133.0, 640.0, 480.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 120.0, 240.0, 25.0, 25.0 ],
									"id" : "obj-24",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 15.0, 25.0, 25.0 ],
									"id" : "obj-23",
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "receive~ sound_file",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 435.0, 90.0, 114.0, 20.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 120.0, 120.0, 32.5, 18.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "selector~ 9",
									"fontsize" : 12.0,
									"numinlets" : 10,
									"numoutlets" : 1,
									"patching_rect" : [ 120.0, 165.0, 334.5, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adc~ 1 2 3 4 5 6 7 8",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 8,
									"patching_rect" : [ 150.0, 90.0, 264.0, 20.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 1 9",
									"fontsize" : 12.0,
									"numinlets" : 3,
									"numoutlets" : 2,
									"patching_rect" : [ 45.0, 90.0, 52.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 45.0, 60.0, 50.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 7 ],
									"destination" : [ "obj-20", 8 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 6 ],
									"destination" : [ "obj-20", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 5 ],
									"destination" : [ "obj-20", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 4 ],
									"destination" : [ "obj-20", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 3 ],
									"destination" : [ "obj-20", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-20", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-20", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-20", 9 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "SenderOnOff[3]",
					"text" : "Off",
					"presentation_rect" : [ 900.0, 45.0, 24.0, 16.0 ],
					"numinlets" : 1,
					"texton" : "On",
					"numoutlets" : 2,
					"automation" : "Off",
					"patching_rect" : [ 1959.0, 998.0, 24.0, 16.0 ],
					"presentation" : 1,
					"id" : "obj-97",
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"automationon" : "On",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_invisible" : 0,
							"parameter_unitstyle" : 10,
							"parameter_annotation_name" : "",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "SenderOnOff[3]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "SenderOnOff[2]",
					"text" : "Off",
					"presentation_rect" : [ 900.0, 29.000004, 24.0, 16.0 ],
					"numinlets" : 1,
					"texton" : "On",
					"numoutlets" : 2,
					"automation" : "Off",
					"patching_rect" : [ 1737.0, 1001.0, 24.0, 16.0 ],
					"presentation" : 1,
					"id" : "obj-96",
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"automationon" : "On",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_invisible" : 0,
							"parameter_unitstyle" : 10,
							"parameter_annotation_name" : "",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "SenderOnOff[2]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "SenderOnOff[1]",
					"text" : "Off",
					"presentation_rect" : [ 696.0, 46.0, 24.0, 16.0 ],
					"numinlets" : 1,
					"texton" : "On",
					"numoutlets" : 2,
					"automation" : "Off",
					"patching_rect" : [ 1526.0, 1011.0, 24.0, 16.0 ],
					"presentation" : 1,
					"id" : "obj-95",
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"automationon" : "On",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_invisible" : 0,
							"parameter_unitstyle" : 10,
							"parameter_annotation_name" : "",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "SenderOnOff[1]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "text[2]",
					"text" : "pattr text",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1659.0, 985.0, 53.0, 18.0 ],
					"id" : "obj-15",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "", "" ],
					"saved_object_attributes" : 					{
						"initial" : [ 7400 ],
						"parameter_enable" : 1
					}
,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 0.0,
							"parameter_steps" : 0,
							"parameter_exponent" : 1.0,
							"parameter_invisible" : 1,
							"parameter_unitstyle" : 10,
							"parameter_annotation_name" : "",
							"parameter_mmax" : 127.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 7400 ],
							"parameter_type" : 3,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Port",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Port[1]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC Senders",
					"fontsize" : 10.0,
					"presentation_rect" : [ 645.0, 15.0, 150.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1321.0, 978.0, 150.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-66",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p OSCSender1",
					"fontsize" : 10.0,
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 1964.0, 1035.0, 81.0, 18.0 ],
					"id" : "obj-45",
					"fontname" : "Arial Bold",
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 343.0, 92.0, 60.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "maxpacketsize 16384",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 327.0, 137.0, 123.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 138.0, 32.5, 18.0 ],
									"id" : "obj-57",
									"fontname" : "Arial Bold",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 139.0, 100.0, 56.0, 18.0 ],
									"id" : "obj-42",
									"fontname" : "Arial Bold",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 223.0, 104.0, 56.0, 18.0 ],
									"id" : "obj-54",
									"fontname" : "Arial Bold",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "port $1",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 131.0, 47.0, 18.0 ],
									"id" : "obj-46",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "host $1",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 141.0, 129.0, 49.0, 18.0 ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.1 7400",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 160.0, 122.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Arial Bold"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-58",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 63.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-59",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 139.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-60",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-61",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-57", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "text[6]",
					"text" : "pattr text",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 2089.0, 975.0, 53.0, 18.0 ],
					"id" : "obj-46",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "", "" ],
					"saved_object_attributes" : 					{
						"initial" : [ 7400 ],
						"parameter_enable" : 1
					}
,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 0.0,
							"parameter_steps" : 0,
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_invisible" : 1,
							"parameter_unitstyle" : 10,
							"parameter_annotation_name" : "",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 7400 ],
							"parameter_type" : 3,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "OnsetOnOff[5]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "text[7]",
					"text" : "pattr text",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1998.0, 976.0, 53.0, 18.0 ],
					"id" : "obj-47",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "", "" ],
					"saved_object_attributes" : 					{
						"initial" : [ "127.0.0.1" ],
						"parameter_enable" : 1
					}
,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 0.0,
							"parameter_steps" : 0,
							"parameter_exponent" : 1.0,
							"parameter_invisible" : 1,
							"parameter_unitstyle" : 10,
							"parameter_annotation_name" : "",
							"parameter_mmax" : 127.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ "127.0.0.1" ],
							"parameter_type" : 3,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "IP",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "IP[3]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Address[3]",
					"text" : "127.0.0.1",
					"lines" : 1,
					"keymode" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 924.0, 45.0, 94.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 2004.0, 999.0, 85.0, 17.0 ],
					"presentation" : 1,
					"id" : "obj-51",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Port[3]",
					"text" : "7400",
					"lines" : 1,
					"keymode" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 1020.0, 45.0, 44.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 2095.0, 998.0, 44.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-52",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p OSCSender1",
					"fontsize" : 10.0,
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 1742.0, 1039.0, 81.0, 18.0 ],
					"id" : "obj-38",
					"fontname" : "Arial Bold",
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 343.0, 92.0, 60.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "maxpacketsize 16384",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 327.0, 137.0, 123.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 138.0, 32.5, 18.0 ],
									"id" : "obj-57",
									"fontname" : "Arial Bold",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 139.0, 100.0, 56.0, 18.0 ],
									"id" : "obj-42",
									"fontname" : "Arial Bold",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 223.0, 104.0, 56.0, 18.0 ],
									"id" : "obj-54",
									"fontname" : "Arial Bold",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "port $1",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 131.0, 47.0, 18.0 ],
									"id" : "obj-46",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "host $1",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 141.0, 129.0, 49.0, 18.0 ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.1 7400",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 160.0, 122.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Arial Bold"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-58",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 63.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-59",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 139.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-60",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-61",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-57", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "text[4]",
					"text" : "pattr text",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1867.0, 979.0, 53.0, 18.0 ],
					"id" : "obj-39",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "", "" ],
					"saved_object_attributes" : 					{
						"initial" : [ 7400 ],
						"parameter_enable" : 1
					}
,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 0.0,
							"parameter_steps" : 0,
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_invisible" : 1,
							"parameter_unitstyle" : 10,
							"parameter_annotation_name" : "",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 7400 ],
							"parameter_type" : 3,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "OnsetOnOff[1]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "text[5]",
					"text" : "pattr text",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1776.0, 980.0, 53.0, 18.0 ],
					"id" : "obj-40",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "", "" ],
					"saved_object_attributes" : 					{
						"initial" : [ "127.0.0.1" ],
						"parameter_enable" : 1
					}
,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 0.0,
							"parameter_steps" : 0,
							"parameter_exponent" : 1.0,
							"parameter_invisible" : 1,
							"parameter_unitstyle" : 10,
							"parameter_annotation_name" : "",
							"parameter_mmax" : 127.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ "127.0.0.1" ],
							"parameter_type" : 3,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "IP",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "IP[2]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Address[2]",
					"text" : "127.0.0.1",
					"lines" : 1,
					"keymode" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 924.0, 29.000004, 94.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 1782.0, 1003.0, 85.0, 17.0 ],
					"presentation" : 1,
					"id" : "obj-42",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Port[2]",
					"text" : "7400",
					"lines" : 1,
					"keymode" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 1020.0, 29.000004, 44.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 1873.0, 1002.0, 44.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-44",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p OSCSender1",
					"fontsize" : 10.0,
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 1530.0, 1050.0, 81.0, 18.0 ],
					"id" : "obj-21",
					"fontname" : "Arial Bold",
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 343.0, 92.0, 60.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "maxpacketsize 16384",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 327.0, 137.0, 123.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 138.0, 32.5, 18.0 ],
									"id" : "obj-57",
									"fontname" : "Arial Bold",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 139.0, 100.0, 56.0, 18.0 ],
									"id" : "obj-42",
									"fontname" : "Arial Bold",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 223.0, 104.0, 56.0, 18.0 ],
									"id" : "obj-54",
									"fontname" : "Arial Bold",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "port $1",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 131.0, 47.0, 18.0 ],
									"id" : "obj-46",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "host $1",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 141.0, 129.0, 49.0, 18.0 ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.1 7400",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 160.0, 122.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Arial Bold"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-58",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 63.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-59",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 139.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-60",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-61",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-57", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "text[3]",
					"text" : "pattr text",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1564.0, 991.0, 53.0, 18.0 ],
					"id" : "obj-33",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "", "" ],
					"saved_object_attributes" : 					{
						"initial" : [ "127.0.0.1" ],
						"parameter_enable" : 1
					}
,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 0.0,
							"parameter_steps" : 0,
							"parameter_exponent" : 1.0,
							"parameter_invisible" : 1,
							"parameter_unitstyle" : 10,
							"parameter_annotation_name" : "",
							"parameter_mmax" : 127.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ "127.0.0.1" ],
							"parameter_type" : 3,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "IP",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "IP[1]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Address[1]",
					"text" : "127.0.0.1",
					"lines" : 1,
					"keymode" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 720.0, 46.0, 94.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 1570.0, 1014.0, 85.0, 17.0 ],
					"presentation" : 1,
					"id" : "obj-35",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Port[1]",
					"text" : "7400",
					"lines" : 1,
					"keymode" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 816.0, 46.0, 44.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 1661.0, 1013.0, 44.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-36",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p OSCSender1",
					"fontsize" : 10.0,
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 1342.0, 1055.0, 81.0, 18.0 ],
					"id" : "obj-62",
					"fontname" : "Arial Bold",
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 328.0, 77.0, 60.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "maxpacketsize 16384",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 312.0, 122.0, 123.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 138.0, 32.5, 18.0 ],
									"id" : "obj-57",
									"fontname" : "Arial Bold",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 139.0, 100.0, 56.0, 18.0 ],
									"id" : "obj-42",
									"fontname" : "Arial Bold",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 223.0, 104.0, 56.0, 18.0 ],
									"id" : "obj-54",
									"fontname" : "Arial Bold",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "port $1",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 131.0, 47.0, 18.0 ],
									"id" : "obj-46",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "host $1",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 141.0, 129.0, 49.0, 18.0 ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.1 7400",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 160.0, 122.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Arial Bold"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-58",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 63.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-59",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 139.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-60",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-61",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-57", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "text",
					"text" : "pattr text",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1467.0, 995.0, 53.0, 18.0 ],
					"id" : "obj-56",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "", "" ],
					"saved_object_attributes" : 					{
						"initial" : [ 7400 ],
						"parameter_enable" : 1
					}
,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 0.0,
							"parameter_steps" : 0,
							"parameter_exponent" : 1.0,
							"parameter_invisible" : 1,
							"parameter_unitstyle" : 10,
							"parameter_annotation_name" : "",
							"parameter_mmax" : 127.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 7400 ],
							"parameter_type" : 3,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Port",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Port",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "text[1]",
					"text" : "pattr text",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1376.0, 996.0, 53.0, 18.0 ],
					"id" : "obj-55",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "", "" ],
					"saved_object_attributes" : 					{
						"initial" : [ "127.0.0.1" ],
						"parameter_enable" : 1
					}
,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 0.0,
							"parameter_steps" : 0,
							"parameter_exponent" : 1.0,
							"parameter_invisible" : 1,
							"parameter_unitstyle" : 10,
							"parameter_annotation_name" : "",
							"parameter_mmax" : 127.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ "127.0.0.1" ],
							"parameter_type" : 3,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "IP",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "IP",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "SenderOnOff",
					"text" : "Off",
					"presentation_rect" : [ 696.0, 30.0, 24.0, 16.0 ],
					"numinlets" : 1,
					"texton" : "On",
					"numoutlets" : 2,
					"automation" : "Off",
					"patching_rect" : [ 1342.0, 1019.0, 24.0, 16.0 ],
					"presentation" : 1,
					"id" : "obj-49",
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"automationon" : "On",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_invisible" : 0,
							"parameter_unitstyle" : 10,
							"parameter_annotation_name" : "",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "SenderOnOff",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Address",
					"text" : "127.0.0.1",
					"lines" : 1,
					"keymode" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 720.0, 30.0, 94.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 1382.0, 1019.0, 85.0, 17.0 ],
					"presentation" : 1,
					"id" : "obj-37",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Port",
					"text" : "7400",
					"lines" : 1,
					"keymode" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 816.0, 30.0, 44.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 1473.0, 1018.0, 44.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-48",
					"fontname" : "Arial Bold",
					"outlettype" : [ "", "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 36.0,
					"presentation_rect" : [ 1095.0, 15.0, 82.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 195.0, 0.0, 82.0, 48.0 ],
					"presentation" : 1,
					"id" : "obj-12",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "MonoStereo",
					"text" : "Mono",
					"numinlets" : 1,
					"activebgcolor" : [ 0.384314, 0.290196, 0.909804, 1.0 ],
					"texton" : "Stereo",
					"numoutlets" : 2,
					"automation" : "Mono",
					"patching_rect" : [ 176.0, 55.0, 56.0, 18.0 ],
					"id" : "obj-60",
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"automationon" : "Stereo",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_enum" : [ "Mono", "Stereo" ],
							"parameter_exponent" : 1.0,
							"parameter_invisible" : 0,
							"parameter_unitstyle" : 10,
							"parameter_annotation_name" : "",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 1 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "MonoStereo",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "Analyser_channel",
					"args" : [  ],
					"presentation_rect" : [ 15.0, 165.0, 1313.0, 178.0 ],
					"numinlets" : 4,
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 180.0, 1187.0, 182.0 ],
					"presentation" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"name" : "Analyser_channel_horz.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"mode" : 1,
					"grad2" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"bordercolor" : [ 0.501961, 0.717647, 0.764706, 1.0 ],
					"presentation_rect" : [ 630.0, 15.0, 447.818176, 60.090908 ],
					"numinlets" : 1,
					"bgcolor" : [ 0.501961, 0.717647, 0.764706, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 2205.0, 945.0, 88.0, 75.0 ],
					"presentation" : 1,
					"id" : "obj-20",
					"grad1" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"rounded" : 48
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-190", 0 ],
					"destination" : [ "obj-194", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-191", 0 ],
					"destination" : [ "obj-195", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-192", 0 ],
					"destination" : [ "obj-196", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-193", 0 ],
					"destination" : [ "obj-197", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-194", 0 ],
					"destination" : [ "obj-198", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-195", 0 ],
					"destination" : [ "obj-199", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-196", 0 ],
					"destination" : [ "obj-200", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-197", 0 ],
					"destination" : [ "obj-201", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-202", 0 ],
					"destination" : [ "obj-203", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-182", 0 ],
					"destination" : [ "obj-183", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-177", 0 ],
					"destination" : [ "obj-181", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-176", 0 ],
					"destination" : [ "obj-180", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-175", 0 ],
					"destination" : [ "obj-179", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-174", 0 ],
					"destination" : [ "obj-178", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-173", 0 ],
					"destination" : [ "obj-177", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-172", 0 ],
					"destination" : [ "obj-176", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 0 ],
					"destination" : [ "obj-175", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-170", 0 ],
					"destination" : [ "obj-174", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-150", 0 ],
					"destination" : [ "obj-154", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-151", 0 ],
					"destination" : [ "obj-155", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-152", 0 ],
					"destination" : [ "obj-156", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-153", 0 ],
					"destination" : [ "obj-157", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-154", 0 ],
					"destination" : [ "obj-158", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-155", 0 ],
					"destination" : [ "obj-159", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-156", 0 ],
					"destination" : [ "obj-160", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-157", 0 ],
					"destination" : [ "obj-161", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-162", 0 ],
					"destination" : [ "obj-163", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-135", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 1 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-45", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-45", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-38", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-38", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 1 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 1 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-21", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-21", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-62", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-62", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 1 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1428.5, 362.363647, 1555.909058, 362.363647, 1555.909058, 4.545455, 1404.5, 4.545455 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 1 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-183", 0 ],
					"destination" : [ "obj-184", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-165", 0 ],
					"destination" : [ "obj-184", 3 ],
					"hidden" : 0,
					"midpoints" : [ 1089.5, 1380.0, 1192.5, 1380.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-184", 0 ],
					"destination" : [ "obj-174", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 1650.0, 249.5, 1650.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-184", 0 ],
					"destination" : [ "obj-175", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 1650.0, 189.5, 1650.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-184", 0 ],
					"destination" : [ "obj-176", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 1650.0, 129.5, 1650.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-184", 0 ],
					"destination" : [ "obj-177", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 1650.0, 69.5, 1650.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-204", 0 ],
					"destination" : [ "obj-197", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 1245.0, 69.5, 1245.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-204", 0 ],
					"destination" : [ "obj-196", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 1245.0, 129.5, 1245.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-204", 0 ],
					"destination" : [ "obj-195", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 1245.0, 189.5, 1245.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-204", 0 ],
					"destination" : [ "obj-194", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 1245.0, 249.5, 1245.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-185", 0 ],
					"destination" : [ "obj-204", 3 ],
					"hidden" : 0,
					"midpoints" : [ 1089.5, 975.0, 1192.5, 975.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-203", 0 ],
					"destination" : [ "obj-204", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-164", 0 ],
					"destination" : [ "obj-157", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 840.0, 69.5, 840.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-164", 0 ],
					"destination" : [ "obj-156", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 840.0, 129.5, 840.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-164", 0 ],
					"destination" : [ "obj-155", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 840.0, 189.5, 840.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-164", 0 ],
					"destination" : [ "obj-154", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 840.0, 249.5, 840.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-145", 0 ],
					"destination" : [ "obj-164", 3 ],
					"hidden" : 0,
					"midpoints" : [ 1089.5, 570.0, 1192.5, 570.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-163", 0 ],
					"destination" : [ "obj-164", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-3", 3 ],
					"hidden" : 0,
					"midpoints" : [ 1089.5, 165.0, 1192.5, 165.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-64", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 435.0, 249.5, 435.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-63", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 435.0, 189.5, 435.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-61", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 435.0, 129.5, 435.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 435.0, 69.5, 435.0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-184::obj-78::obj-13" : [ "OnsetGain[35]", "Gain", 0 ],
			"obj-164::obj-151::obj-41" : [ "BufferSize[1]", "BufferSize", 0 ],
			"obj-3::obj-27" : [ "FiddleSmooth[3]", "Smooth", 0 ],
			"obj-3::obj-76" : [ "Type[1]", "Type", 0 ],
			"obj-184::obj-92::obj-13" : [ "OnsetGain[33]", "Gain", 0 ],
			"obj-164::obj-32" : [ "spread_smooth[1]", "Smooth", 0 ],
			"obj-3::obj-199::obj-31" : [ "FiddleSmooth[1]", "Smooth", 0 ],
			"obj-3::obj-60" : [ "OnsetSensitivity[7]", "Min Interval", 0 ],
			"obj-3::obj-51" : [ "melscalebands[1]", "Num Bands", 0 ],
			"obj-184::obj-60" : [ "OnsetSensitivity[8]", "Min Interval", 0 ],
			"obj-204::obj-22" : [ "pitch_high_thresh[2]", "HighThresh", 0 ],
			"obj-204::obj-85" : [ "Mel_OnOff[2]", "Active", 0 ],
			"obj-3::obj-184::obj-27" : [ "FiddleSmooth", "Smooth", 0 ],
			"obj-3::obj-41" : [ "snapshot_buffersize", "BufferSize", 0 ],
			"obj-184::obj-131::obj-13" : [ "OnsetGain[36]", "Gain", 0 ],
			"obj-204::obj-76" : [ "Type[4]", "Type", 0 ],
			"obj-204::obj-93" : [ "AmplitudeOnOff[4]", "Active", 0 ],
			"obj-184::obj-27" : [ "pitch_smooth[1]", "Smooth", 0 ],
			"obj-204::obj-131::obj-22" : [ "ezbeatthreshHigh[4]", "threshHigh", 0 ],
			"obj-3::obj-184::obj-13" : [ "OnsetGain[8]", "Gain", 0 ],
			"obj-184::obj-76" : [ "Type[3]", "Type", 0 ],
			"obj-204::obj-27" : [ "pitch_smooth[2]", "Smooth", 0 ],
			"obj-184::obj-137" : [ "FFT_OnOff[3]", "Active", 0 ],
			"obj-204::obj-184::obj-16" : [ "FiddleHighThresh[4]", "HighThresh", 0 ],
			"obj-3::obj-92::obj-13" : [ "OnsetGain[3]", "Gain", 0 ],
			"obj-184::obj-93" : [ "AmplitudeOnOff[3]", "Active", 0 ],
			"obj-204::obj-32" : [ "spread_smooth[3]", "Smooth", 0 ],
			"obj-15" : [ "Port[1]", "Port", 0 ],
			"obj-184::obj-124::obj-43" : [ "live.text[8]", "live.text", 0 ],
			"obj-204::obj-184::obj-27" : [ "FiddleSmooth[12]", "Smooth", 0 ],
			"obj-164::obj-184::obj-13" : [ "OnsetGain[27]", "Gain", 0 ],
			"obj-204::obj-79" : [ "Gain[4]", "Gain", 0 ],
			"obj-164::obj-124::obj-13" : [ "OnsetGain[46]", "Gain", 0 ],
			"obj-3::obj-68" : [ "EZThreshOnOff", "Active", 0 ],
			"obj-3::obj-137" : [ "EZThreshOnOff[2]", "Active", 0 ],
			"obj-164::obj-199::obj-13" : [ "OnsetGain[26]", "Gain", 0 ],
			"obj-3::obj-80" : [ "Freq[1]", "Freq", 0 ],
			"obj-3::obj-23" : [ "FiddleLowThresh[1]", "LowThresh", 0 ],
			"obj-97" : [ "SenderOnOff[3]", "Active", 0 ],
			"obj-184::obj-50::obj-33" : [ "melscalebands[4]", "Num Bands", 0 ],
			"obj-164::obj-134" : [ "OnsetSensitivity", "Sensitivity", 0 ],
			"obj-164::obj-76" : [ "Type[2]", "Type", 0 ],
			"obj-3::obj-133" : [ "Octaves[3]", "Octaves", 0 ],
			"obj-3::obj-78::obj-27" : [ "AmplitudeSmooth", "Smooth", 0 ],
			"obj-184::obj-121" : [ "FFT_OnOff[2]", "Active", 0 ],
			"obj-164::obj-93" : [ "AmplitudeOnOff[2]", "Active", 0 ],
			"obj-3::obj-55" : [ "amplitude_smooth", "Smooth", 0 ],
			"obj-3::obj-124::obj-43" : [ "live.text[15]", "live.text", 0 ],
			"obj-184::obj-134" : [ "OnsetSensitivity[9]", "Sensitivity", 0 ],
			"obj-204::obj-131::obj-8" : [ "ezbeatThreshLow[4]", "threshLow", 0 ],
			"obj-164::obj-179" : [ "pitch_OnOff", "Active", 0 ],
			"obj-164::obj-124::obj-55" : [ "live.text[12]", "live.text", 0 ],
			"obj-3::obj-131::obj-22" : [ "ezbeatthreshHigh[5]", "threshHigh", 0 ],
			"obj-33" : [ "IP[1]", "IP", 0 ],
			"obj-184::obj-32" : [ "spread_smooth[2]", "Smooth", 0 ],
			"obj-204::obj-151::obj-13" : [ "OnsetGain[44]", "Gain", 0 ],
			"obj-204::obj-131::obj-66" : [ "ezbeatmetering[4]", "Metering Interval", 0 ],
			"obj-164::obj-131::obj-8" : [ "ezbeatThreshLow[2]", "threshLow", 0 ],
			"obj-164::obj-201" : [ "spread_OnOff", "Active", 0 ],
			"obj-3::obj-206::obj-13" : [ "OnsetGain[12]", "Gain", 0 ],
			"obj-184::obj-81" : [ "Q[3]", "Q", 0 ],
			"obj-184::obj-124::obj-13" : [ "OnsetGain[16]", "Gain", 0 ],
			"obj-204::obj-81" : [ "Q[4]", "Q", 0 ],
			"obj-204::obj-78::obj-13" : [ "OnsetGain[40]", "Gain", 0 ],
			"obj-184::obj-206::obj-31" : [ "FiddleSmooth[7]", "Smooth", 0 ],
			"obj-204::obj-131::obj-13" : [ "OnsetGain[41]", "Gain", 0 ],
			"obj-184::obj-199::obj-31" : [ "FiddleSmooth[8]", "Smooth", 0 ],
			"obj-204::obj-179" : [ "pitch_OnOff[2]", "Active", 0 ],
			"obj-3::obj-151::obj-41" : [ "BufferSize", "BufferSize", 0 ],
			"obj-3::obj-50::obj-13" : [ "OnsetGain[9]", "Gain", 0 ],
			"obj-184::obj-23" : [ "pitch_low_thresh[1]", "LowThresh", 0 ],
			"obj-204::obj-124::obj-13" : [ "OnsetGain[39]", "Gain", 0 ],
			"obj-204::obj-26" : [ "centroid_smooth[3]", "Smooth", 0 ],
			"obj-3::obj-50::obj-33" : [ "melscalebands", "Num Bands", 0 ],
			"obj-204::obj-151::obj-41" : [ "BufferSize[3]", "BufferSize", 0 ],
			"obj-164::obj-41" : [ "snapshot_buffersize[1]", "BufferSize", 0 ],
			"obj-204::obj-51" : [ "melscalebands[6]", "Num Bands", 0 ],
			"obj-164::obj-137" : [ "FFT_OnOff", "Active", 0 ],
			"obj-164::obj-206::obj-13" : [ "OnsetGain[30]", "Gain", 0 ],
			"obj-3::obj-134" : [ "OnsetSensitivity[6]", "Sensitivity", 0 ],
			"obj-184::obj-55" : [ "amplitude_smooth[2]", "Smooth", 0 ],
			"obj-164::obj-124::obj-49" : [ "live.text[13]", "live.text", 0 ],
			"obj-3::obj-179" : [ "AmplitudeOnOff[1]", "Active", 0 ],
			"obj-3::obj-79" : [ "Gain[1]", "Gain", 0 ],
			"obj-184::obj-51" : [ "melscalebands[5]", "Num Bands", 0 ],
			"obj-164::obj-60" : [ "OnsetSensitivity[1]", "Min Interval", 0 ],
			"obj-164::obj-81" : [ "Q[2]", "Q", 0 ],
			"obj-3::obj-110::obj-13" : [ "OnsetGain[47]", "Gain", 0 ],
			"obj-184::obj-22" : [ "pitch_high_thresh[1]", "HighThresh", 0 ],
			"obj-164::obj-208" : [ "centroid_OnOff", "Active", 0 ],
			"obj-164::obj-124::obj-43" : [ "live.text[14]", "live.text", 0 ],
			"obj-3::obj-85" : [ "EZThreshOnOff[3]", "Active", 0 ],
			"obj-3::obj-77" : [ "Active[1]", "Active", 0 ],
			"obj-184::obj-110::obj-13" : [ "OnsetGain[34]", "Gain", 0 ],
			"obj-204::obj-55" : [ "amplitude_smooth[3]", "Smooth", 0 ],
			"obj-164::obj-78::obj-13" : [ "OnsetGain[1]", "Gain", 0 ],
			"obj-164::obj-131::obj-13" : [ "OnsetGain[15]", "Gain", 0 ],
			"obj-164::obj-22" : [ "pitch_high_thresh", "HighThresh", 0 ],
			"obj-164::obj-26" : [ "centroid_smooth[1]", "Smooth", 0 ],
			"obj-3::obj-201" : [ "EZThreshOnOff[5]", "Active", 0 ],
			"obj-184::obj-26" : [ "centroid_smooth[2]", "Smooth", 0 ],
			"obj-204::obj-124::obj-49" : [ "live.text[10]", "live.text", 0 ],
			"obj-204::obj-110::obj-13" : [ "OnsetGain[43]", "Gain", 0 ],
			"obj-3::obj-32" : [ "spread_smooth", "Smooth", 0 ],
			"obj-184::obj-151::obj-13" : [ "OnsetGain[49]", "Gain", 0 ],
			"obj-204::obj-23" : [ "pitch_low_thresh[2]", "LowThresh", 0 ],
			"obj-184::obj-208" : [ "centroid_OnOff[1]", "Active", 0 ],
			"obj-204::obj-199::obj-31" : [ "FiddleSmooth[11]", "Smooth", 0 ],
			"obj-3::obj-151::obj-13" : [ "OnsetGain[7]", "Gain", 0 ],
			"obj-184::obj-124::obj-55" : [ "live.text[6]", "live.text", 0 ],
			"obj-184::obj-77" : [ "Active[3]", "Active", 0 ],
			"obj-204::obj-137" : [ "FFT_OnOff[7]", "Active", 0 ],
			"obj-184::obj-50::obj-13" : [ "OnsetGain[37]", "Gain", 0 ],
			"obj-204::obj-134" : [ "OnsetSensitivity[11]", "Sensitivity", 0 ],
			"obj-60" : [ "MonoStereo", "Active", 0 ],
			"obj-204::obj-199::obj-13" : [ "OnsetGain[52]", "Gain", 0 ],
			"obj-164::obj-80" : [ "Freq[2]", "Freq", 0 ],
			"obj-204::obj-133" : [ "Octaves[2]", "Octaves", 0 ],
			"obj-164::obj-206::obj-31" : [ "FiddleSmooth[5]", "Smooth", 0 ],
			"obj-164::obj-121" : [ "FFT_OnOff[1]", "Active", 0 ],
			"obj-164::obj-199::obj-31" : [ "FiddleSmooth[4]", "Smooth", 0 ],
			"obj-3::obj-208" : [ "EZThreshOnOff[6]", "Active", 0 ],
			"obj-184::obj-179" : [ "pitch_OnOff[1]", "Active", 0 ],
			"obj-164::obj-55" : [ "amplitude_smooth[1]", "Smooth", 0 ],
			"obj-164::obj-85" : [ "Mel_OnOff", "Active", 0 ],
			"obj-3::obj-124::obj-49" : [ "live.text[16]", "live.text", 0 ],
			"obj-184::obj-206::obj-13" : [ "OnsetGain[32]", "Gain", 0 ],
			"obj-164::obj-50::obj-33" : [ "melscalebands[3]", "Num Bands", 0 ],
			"obj-3::obj-121" : [ "FFT_OnOff[6]", "Active", 0 ],
			"obj-3::obj-81" : [ "Q[1]", "Q", 0 ],
			"obj-184::obj-85" : [ "Mel_OnOff[1]", "Active", 0 ],
			"obj-164::obj-79" : [ "Gain[2]", "Gain", 0 ],
			"obj-3::obj-93" : [ "AmplitudeOnOff", "Active", 0 ],
			"obj-3::obj-131::obj-8" : [ "ezbeatThreshLow[5]", "threshLow", 0 ],
			"obj-3::obj-26" : [ "centroid_smooth", "Smooth", 0 ],
			"obj-184::obj-199::obj-13" : [ "OnsetGain[50]", "Gain", 0 ],
			"obj-204::obj-60" : [ "OnsetSensitivity[10]", "Min Interval", 0 ],
			"obj-164::obj-23" : [ "pitch_low_thresh", "LowThresh", 0 ],
			"obj-164::obj-68" : [ "EZThreshOnOff[4]", "Active", 0 ],
			"obj-3::obj-184::obj-11" : [ "FiddleLowThresh", "LowThresh", 0 ],
			"obj-3::obj-199::obj-13" : [ "OnsetGain[11]", "Gain", 0 ],
			"obj-55" : [ "IP", "IP", 0 ],
			"obj-184::obj-184::obj-13" : [ "OnsetGain[38]", "Gain", 0 ],
			"obj-204::obj-68" : [ "EZThreshOnOff[8]", "Active", 0 ],
			"obj-204::obj-184::obj-11" : [ "FiddleLowThresh[4]", "LowThresh", 0 ],
			"obj-184::obj-80" : [ "Freq[3]", "Freq", 0 ],
			"obj-204::obj-50::obj-33" : [ "melscalebands[7]", "Num Bands", 0 ],
			"obj-184::obj-68" : [ "EZThreshOnOff[7]", "Active", 0 ],
			"obj-204::obj-146" : [ "SnapshotOnOff[4]", "Active", 0 ],
			"obj-46" : [ "OnsetOnOff[5]", "Active", 0 ],
			"obj-184::obj-79" : [ "Gain[3]", "Gain", 0 ],
			"obj-204::obj-92::obj-13" : [ "OnsetGain[51]", "Gain", 0 ],
			"obj-164::obj-110::obj-13" : [ "OnsetGain[14]", "Gain", 0 ],
			"obj-47" : [ "IP[3]", "IP", 0 ],
			"obj-184::obj-184::obj-27" : [ "FiddleSmooth[9]", "Smooth", 0 ],
			"obj-204::obj-121" : [ "FFT_OnOff[4]", "Active", 0 ],
			"obj-204::obj-206::obj-31" : [ "FiddleSmooth[10]", "Smooth", 0 ],
			"obj-164::obj-50::obj-13" : [ "OnsetGain[28]", "Gain", 0 ],
			"obj-204::obj-80" : [ "Freq[4]", "Freq", 0 ],
			"obj-164::obj-184::obj-11" : [ "FiddleLowThresh[2]", "LowThresh", 0 ],
			"obj-164::obj-146" : [ "SnapshotOnOff[2]", "Active", 0 ],
			"obj-3::obj-78::obj-13" : [ "OnsetGain[25]", "Gain", 0 ],
			"obj-184::obj-184::obj-11" : [ "FiddleLowThresh[3]", "LowThresh", 0 ],
			"obj-164::obj-184::obj-27" : [ "FiddleSmooth[6]", "Smooth", 0 ],
			"obj-3::obj-206::obj-31" : [ "FiddleSmooth[2]", "Smooth", 0 ],
			"obj-3::obj-124::obj-55" : [ "live.text[17]", "live.text", 0 ],
			"obj-184::obj-78::obj-27" : [ "AmplitudeSmooth[2]", "Smooth", 0 ],
			"obj-164::obj-92::obj-13" : [ "OnsetGain[31]", "Gain", 0 ],
			"obj-3::obj-146" : [ "SnapshotOnOff[1]", "Active", 0 ],
			"obj-3::obj-131::obj-66" : [ "ezbeatmetering[5]", "Metering Interval", 0 ],
			"obj-95" : [ "SenderOnOff[1]", "Active", 0 ],
			"obj-184::obj-184::obj-16" : [ "FiddleHighThresh[3]", "HighThresh", 0 ],
			"obj-164::obj-51" : [ "melscalebands[2]", "Num Bands", 0 ],
			"obj-3::obj-184::obj-16" : [ "FiddleHighThresh", "HighThresh", 0 ],
			"obj-3::obj-124::obj-13" : [ "OnsetGain[55]", "Gain", 0 ],
			"obj-184::obj-151::obj-41" : [ "BufferSize[2]", "BufferSize", 0 ],
			"obj-204::obj-41" : [ "snapshot_buffersize[3]", "BufferSize", 0 ],
			"obj-204::obj-206::obj-13" : [ "OnsetGain[45]", "Gain", 0 ],
			"obj-164::obj-27" : [ "pitch_smooth", "Smooth", 0 ],
			"obj-184::obj-146" : [ "SnapshotOnOff[3]", "Active", 0 ],
			"obj-204::obj-78::obj-27" : [ "AmplitudeSmooth[3]", "Smooth", 0 ],
			"obj-204::obj-184::obj-13" : [ "OnsetGain[53]", "Gain", 0 ],
			"obj-164::obj-131::obj-66" : [ "ezbeatmetering[2]", "Metering Interval", 0 ],
			"obj-184::obj-41" : [ "snapshot_buffersize[2]", "BufferSize", 0 ],
			"obj-204::obj-50::obj-13" : [ "OnsetGain[54]", "Gain", 0 ],
			"obj-184::obj-131::obj-22" : [ "ezbeatthreshHigh[3]", "threshHigh", 0 ],
			"obj-204::obj-124::obj-55" : [ "live.text[9]", "live.text", 0 ],
			"obj-49" : [ "SenderOnOff", "Active", 0 ],
			"obj-184::obj-131::obj-8" : [ "ezbeatThreshLow[3]", "threshLow", 0 ],
			"obj-184::obj-201" : [ "spread_OnOff[1]", "Active", 0 ],
			"obj-204::obj-201" : [ "spread_OnOff[2]", "Active", 0 ],
			"obj-184::obj-124::obj-49" : [ "live.text[7]", "live.text", 0 ],
			"obj-184::obj-131::obj-66" : [ "ezbeatmetering[3]", "Metering Interval", 0 ],
			"obj-204::obj-77" : [ "Active[4]", "Active", 0 ],
			"obj-56" : [ "Port", "Port", 0 ],
			"obj-204::obj-208" : [ "centroid_OnOff[2]", "Active", 0 ],
			"obj-164::obj-184::obj-16" : [ "FiddleHighThresh[2]", "HighThresh", 0 ],
			"obj-204::obj-124::obj-43" : [ "live.text[11]", "live.text", 0 ],
			"obj-164::obj-78::obj-27" : [ "AmplitudeSmooth[1]", "Smooth", 0 ],
			"obj-39" : [ "OnsetOnOff[1]", "Active", 0 ],
			"obj-164::obj-77" : [ "Active[2]", "Active", 0 ],
			"obj-3::obj-22" : [ "FiddleHighThresh[1]", "HighThresh", 0 ],
			"obj-40" : [ "IP[2]", "IP", 0 ],
			"obj-184::obj-133" : [ "Octaves[1]", "Octaves", 0 ],
			"obj-164::obj-151::obj-13" : [ "OnsetGain[29]", "Gain", 0 ],
			"obj-164::obj-133" : [ "Octaves", "Octaves", 0 ],
			"obj-164::obj-131::obj-22" : [ "ezbeatthreshHigh[2]", "threshHigh", 0 ],
			"obj-3::obj-131::obj-13" : [ "OnsetGain[48]", "Gain", 0 ],
			"obj-96" : [ "SenderOnOff[2]", "Active", 0 ]
		}

	}

}
