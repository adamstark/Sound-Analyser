{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 45.0, 44.0, 1235.0, 716.0 ],
		"bglocked" : 0,
		"defrect" : [ 45.0, 44.0, 1235.0, 716.0 ],
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
					"text" : "- 1",
					"numoutlets" : 1,
					"patching_rect" : [ 1980.0, 792.0, 32.5, 20.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-186",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 1",
					"numoutlets" : 1,
					"patching_rect" : [ 2050.0, 647.0, 32.5, 20.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-182",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl 2048 len",
					"numoutlets" : 2,
					"patching_rect" : [ 1980.0, 756.0, 69.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-174",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"patching_rect" : [ 1979.0, 838.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1,
					"id" : "obj-173",
					"fontname" : "Arial",
					"triangle" : 0,
					"ignoreclick" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"presentation_rect" : [ 84.0, 527.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl 2048 slice 1024",
					"numoutlets" : 2,
					"patching_rect" : [ 1966.0, 673.0, 107.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-172",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"patching_rect" : [ 2174.0, 689.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-171",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 2175.0, 638.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-170",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 0.",
					"numoutlets" : 1,
					"patching_rect" : [ 2175.0, 660.0, 32.5, 20.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-164",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr 1./(1+$f1)",
					"numoutlets" : 1,
					"patching_rect" : [ 2273.0, 564.0, 89.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-161",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 2216.0, 596.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-158",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "FFT_resolution[1]",
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 2237.0, 459.0, 100.0, 20.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"id" : "obj-157",
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor2" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 82.0, 556.0, 50.0, 20.0 ],
					"items" : [ 1, ",", "1/2", ",", "1/3", ",", "1/4" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"patching_rect" : [ 2141.0, 605.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-156",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bang\nThresh",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"frgb" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 456.0, 65.0, 31.0 ],
					"presentation" : 1,
					"id" : "obj-154",
					"fontname" : "Helvetica Neue",
					"textcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"fontface" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 17.0, 454.0, 42.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 1262.0, 739.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-149",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 1374.0, 897.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-150",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0.5",
					"numoutlets" : 1,
					"patching_rect" : [ 1453.0, 751.0, 82.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-148",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Mel_Bang_Thresh",
					"numoutlets" : 2,
					"minimum" : 0.0,
					"patching_rect" : [ 1412.0, 778.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1,
					"id" : "obj-66",
					"fontname" : "Arial",
					"maximum" : 1.0,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"presentation_rect" : [ 61.0, 461.0, 45.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p melTrigger",
					"numoutlets" : 1,
					"patching_rect" : [ 1309.0, 835.0, 77.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-141",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 599.0, 84.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 599.0, 84.0, 640.0, 480.0 ],
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
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 360.0, 60.0, 25.0, 25.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-3",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p generateBangs",
									"numoutlets" : 1,
									"patching_rect" : [ 182.0, 339.0, 102.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-41",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 807.0, 93.0, 380.0, 486.0 ],
										"bglocked" : 0,
										"defrect" : [ 807.0, 93.0, 380.0, 486.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "number",
													"numoutlets" : 2,
													"patching_rect" : [ 195.0, 135.0, 50.0, 20.0 ],
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-24",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl len",
													"numoutlets" : 2,
													"patching_rect" : [ 195.0, 105.0, 39.0, 20.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 165.0, 420.0, 25.0, 25.0 ],
													"id" : "obj-22",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"numoutlets" : 1,
													"patching_rect" : [ 165.0, 360.0, 32.5, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 105.0, 15.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-20",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend /mel_bin_trigger/1",
													"numoutlets" : 1,
													"patching_rect" : [ 165.0, 390.0, 154.0, 20.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-16",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l l",
													"numoutlets" : 3,
													"patching_rect" : [ 105.0, 75.0, 46.0, 20.0 ],
													"outlettype" : [ "bang", "", "" ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "24",
													"numoutlets" : 1,
													"patching_rect" : [ 165.0, 330.0, 50.0, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 1.",
													"numoutlets" : 2,
													"patching_rect" : [ 165.0, 285.0, 51.0, 20.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"patching_rect" : [ 165.0, 225.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-9",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numoutlets" : 2,
													"patching_rect" : [ 195.0, 195.0, 50.0, 20.0 ],
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"patching_rect" : [ 165.0, 135.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-5",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 5",
													"numoutlets" : 3,
													"patching_rect" : [ 165.0, 165.0, 49.0, 20.0 ],
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth 0",
													"numoutlets" : 2,
													"patching_rect" : [ 165.0, 255.0, 48.0, 20.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"fontsize" : 11.595187,
													"numinlets" : 2
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [ 204.5, 156.0, 204.5, 156.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 2 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [ 141.5, 105.0, 192.0, 105.0, 192.0, 102.0, 204.5, 102.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 128.0, 252.0, 174.5, 252.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [ 114.5, 120.0, 174.5, 120.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 2 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [ 204.5, 240.0, 228.0, 240.0, 228.0, 315.0, 205.5, 315.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 204.5, 216.0, 177.0, 216.0, 177.0, 222.0, 174.5, 222.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.",
									"linecount" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 180.0, 240.0, 115.0, 46.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1 > $f2 @scalarmode 1",
									"numoutlets" : 1,
									"patching_rect" : [ 180.0, 210.0, 194.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p normaliseMax",
									"numoutlets" : 1,
									"patching_rect" : [ 180.0, 120.0, 95.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 428.0, 85.0, 238.0, 215.0 ],
										"bglocked" : 0,
										"defrect" : [ 428.0, 85.0, 238.0, 215.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "maximum",
													"numoutlets" : 2,
													"patching_rect" : [ 165.0, 105.0, 63.0, 20.0 ],
													"outlettype" : [ "int", "int" ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr $f1/$f2 @scalarmode 1",
													"numoutlets" : 1,
													"patching_rect" : [ 15.0, 135.0, 169.0, 20.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 165.0, 25.0, 25.0 ],
													"id" : "obj-2",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 15.0, 15.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 24.5, 90.0, 174.5, 90.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p firstOrderDiff",
									"numoutlets" : 1,
									"patching_rect" : [ 180.0, 150.0, 88.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 535.0, 93.0, 257.0, 368.0 ],
										"bglocked" : 0,
										"defrect" : [ 535.0, 93.0, 257.0, 368.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"numoutlets" : 2,
													"patching_rect" : [ 60.0, 75.0, 32.5, 20.0 ],
													"outlettype" : [ "bang", "" ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.",
													"linecount" : 6,
													"numoutlets" : 1,
													"patching_rect" : [ 120.0, 195.0, 69.0, 87.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr $f1-$f2",
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 225.0, 81.0, 20.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 60.0, 270.0, 25.0, 25.0 ],
													"id" : "obj-2",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 30.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 69.5, 180.0, 129.5, 180.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [ 83.0, 154.0, 179.5, 154.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 83.0, 210.0, 69.5, 210.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 183.0, 367.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 180.0, 60.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-26", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0",
					"numoutlets" : 1,
					"patching_rect" : [ 3001.0, 365.0, 72.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-140",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"patching_rect" : [ 3045.0, 448.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"presentation" : 1,
					"id" : "obj-139",
					"numinlets" : 1,
					"presentation_rect" : [ 153.0, 654.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend assign",
					"numoutlets" : 1,
					"patching_rect" : [ 2977.0, 290.0, 93.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-138",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 250.",
					"numoutlets" : 1,
					"patching_rect" : [ 2938.0, 194.0, 89.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-61",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.dial",
					"varname" : "OnsetSensitivity[1]",
					"numoutlets" : 2,
					"activedialcolor" : [ 1.0, 0.341176, 0.619608, 1.0 ],
					"patching_rect" : [ 2973.0, 537.0, 61.0, 47.0 ],
					"outlettype" : [ "", "float" ],
					"presentation" : 1,
					"id" : "obj-60",
					"parameter_enable" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 206.0, 586.0, 58.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 275.0,
							"parameter_mmin" : 20.0,
							"parameter_initial" : [ 5 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Min Interval",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "OnsetSensitivity[1]",
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
					"text" : "loadmess 1.",
					"numoutlets" : 1,
					"patching_rect" : [ 2914.0, 369.0, 75.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-135",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.dial",
					"varname" : "OnsetSensitivity",
					"numoutlets" : 2,
					"activedialcolor" : [ 1.0, 0.341176, 0.619608, 1.0 ],
					"patching_rect" : [ 2899.0, 430.0, 61.0, 47.0 ],
					"outlettype" : [ "", "float" ],
					"presentation" : 1,
					"id" : "obj-134",
					"parameter_enable" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 210.0, 630.0, 61.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 5.0,
							"parameter_mmin" : 0.5,
							"parameter_initial" : [ 5 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Sensitivity",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "OnsetSensitivity",
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
					"text" : "p ezbeat",
					"numoutlets" : 1,
					"patching_rect" : [ 2861.0, 767.0, 105.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-131",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 5,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 546.0, 176.0, 590.0, 599.0 ],
						"bglocked" : 0,
						"defrect" : [ 546.0, 176.0, 590.0, 599.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 363.0, -1.000008, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 275.0, -5.000008, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 177.0, -5.000008, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 310.0, 113.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 240.0, 99.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 177.0, 86.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ezbeat - by Henrik Ekeus",
									"numoutlets" : 0,
									"patching_rect" : [ 180.315536, 351.068878, 150.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-70",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 144.578491, 16.049042, 150.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "current amplitudes:",
									"numoutlets" : 0,
									"patching_rect" : [ 225.0, 285.0, 150.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-68",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 150.0, 217.513153, 150.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.dial",
									"varname" : "ezbeatmetering[2]",
									"numoutlets" : 2,
									"activedialcolor" : [ 0.396078, 1.0, 0.396078, 1.0 ],
									"patching_rect" : [ 360.0, 45.0, 90.369576, 47.0 ],
									"outlettype" : [ "", "float" ],
									"presentation" : 1,
									"id" : "obj-66",
									"parameter_enable" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 195.0, 135.0, 94.418617, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 0,
											"parameter_mmax" : 100.0,
											"parameter_mmin" : 0.0,
											"parameter_initial" : [ 20 ],
											"parameter_type" : 1,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Metering Interval",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "ezbeatmetering[2]",
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
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"patching_rect" : [ 270.0, 270.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"presentation" : 1,
									"id" : "obj-65",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 240.0, 240.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"patching_rect" : [ 210.0, 270.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"presentation" : 1,
									"id" : "obj-64",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 195.0, 240.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p threshBeat",
									"numoutlets" : 2,
									"patching_rect" : [ 270.0, 225.0, 79.0, 20.0 ],
									"outlettype" : [ "", "float" ],
									"id" : "obj-62",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 4,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 293.0, 55.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 291.0, 367.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"patching_rect" : [ 155.0, 190.0, 36.0, 20.0 ],
													"outlettype" : [ "bang", "" ],
													"id" : "obj-52",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"numoutlets" : 1,
													"patching_rect" : [ 215.0, 280.0, 32.5, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-49",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "< 0.3",
													"numoutlets" : 1,
													"patching_rect" : [ 155.0, 160.0, 38.0, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-47",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numoutlets" : 1,
													"patching_rect" : [ 155.0, 220.0, 32.5, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-46",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numoutlets" : 1,
													"patching_rect" : [ 155.0, 265.0, 34.0, 20.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-44",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"patching_rect" : [ 95.0, 190.0, 36.0, 20.0 ],
													"outlettype" : [ "bang", "" ],
													"id" : "obj-41",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0.5",
													"numoutlets" : 1,
													"patching_rect" : [ 95.0, 160.0, 38.0, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-40",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "peakamp~ 20",
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 100.0, 84.0, 20.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-37",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-56",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 114.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-57",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 174.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-58",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 155.0, 364.5, 25.0, 25.0 ],
													"id" : "obj-59",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 243.0, 300.5, 243.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-44", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-40", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-47", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-59", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-37", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p threshBeat",
									"numoutlets" : 2,
									"patching_rect" : [ 180.0, 225.0, 79.0, 20.0 ],
									"outlettype" : [ "", "float" ],
									"id" : "obj-60",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 4,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 286.0, 43.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 291.0, 367.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"patching_rect" : [ 155.0, 190.0, 36.0, 20.0 ],
													"outlettype" : [ "bang", "" ],
													"id" : "obj-52",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"numoutlets" : 1,
													"patching_rect" : [ 201.0, 336.0, 32.5, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-49",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "< 0.3",
													"numoutlets" : 1,
													"patching_rect" : [ 155.0, 160.0, 38.0, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-47",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numoutlets" : 1,
													"patching_rect" : [ 155.0, 220.0, 32.5, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-46",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numoutlets" : 1,
													"patching_rect" : [ 155.0, 265.0, 34.0, 20.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-44",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"patching_rect" : [ 95.0, 190.0, 36.0, 20.0 ],
													"outlettype" : [ "bang", "" ],
													"id" : "obj-41",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0.5",
													"numoutlets" : 1,
													"patching_rect" : [ 95.0, 160.0, 38.0, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-40",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "peakamp~ 20",
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 100.0, 84.0, 20.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-37",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-56",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 114.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-57",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 174.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-58",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 155.0, 364.5, 25.0, 25.0 ],
													"id" : "obj-59",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-59", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-47", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-40", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-44", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 243.0, 300.5, 243.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-37", 1 ],
													"hidden" : 0,
													"midpoints" : [ 295.5, 83.5, 124.5, 83.5 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Will trigger one bang when crossing the high threshold\n\nIt must fall below the low threshold before another bang can be sent.\n\nMetering interval is ms between measurment of amplitude.. low value for fast reporting (but higher risk of multiple bangs for same sonic event)",
									"linecount" : 12,
									"presentation_linecount" : 13,
									"numoutlets" : 0,
									"patching_rect" : [ 390.0, 120.0, 187.0, 172.0 ],
									"presentation" : 1,
									"id" : "obj-24",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 330.0, 30.0, 164.0, 186.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.dial",
									"varname" : "ezbeatthreshHigh[2]",
									"numoutlets" : 2,
									"activedialcolor" : [ 0.396078, 1.0, 0.396078, 1.0 ],
									"patching_rect" : [ 270.0, 30.0, 61.0, 47.0 ],
									"outlettype" : [ "", "float" ],
									"presentation" : 1,
									"id" : "obj-22",
									"parameter_enable" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 135.0, 105.0, 63.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 1,
											"parameter_mmax" : 1.0,
											"parameter_mmin" : 0.0,
											"parameter_initial" : [ 0.5 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "threshHigh",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "ezbeatthreshHigh[2]",
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
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/ezbeat/2 bang",
									"numoutlets" : 1,
									"patching_rect" : [ 360.0, 315.0, 90.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/ezbeat/1 bang",
									"numoutlets" : 1,
									"patching_rect" : [ 210.0, 315.0, 90.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 137.0, 279.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"presentation" : 1,
									"id" : "obj-11",
									"numinlets" : 1,
									"presentation_rect" : [ 99.0, 231.0, 31.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 115.0, 278.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"presentation" : 1,
									"id" : "obj-10",
									"numinlets" : 1,
									"presentation_rect" : [ 63.0, 231.0, 31.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 196.0, 528.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 118.0, 80.999992, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 118.0, 36.999992, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 58.0, 80.999992, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 58.0, 35.999992, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.gain~",
									"varname" : "OnsetGain[15]",
									"numoutlets" : 5,
									"interp" : 50.0,
									"clip_size" : 1,
									"patching_rect" : [ 90.0, 135.0, 40.0, 80.0 ],
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"presentation" : 1,
									"id" : "obj-13",
									"display_range" : [ -70.0, 32.0 ],
									"parameter_enable" : 1,
									"numinlets" : 2,
									"presentation_rect" : [ 55.0, 48.0, 77.0, 179.0 ],
									"relative" : 1,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 4,
											"parameter_mmax" : 70.0,
											"parameter_mmin" : -70.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Gain",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "OnsetGain[15]",
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
, 							{
								"box" : 								{
									"maxclass" : "live.dial",
									"varname" : "ezbeatThreshLow[2]",
									"numoutlets" : 2,
									"activedialcolor" : [ 0.396078, 1.0, 0.396078, 1.0 ],
									"patching_rect" : [ 180.0, 30.0, 61.0, 47.0 ],
									"outlettype" : [ "", "float" ],
									"presentation" : 1,
									"id" : "obj-8",
									"parameter_enable" : 1,
									"background" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 135.0, 165.0, 56.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 1,
											"parameter_mmax" : 1.0,
											"parameter_mmin" : 0.0,
											"parameter_initial" : [ 0.3 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "threshLow",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "ezbeatThreshLow[2]",
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
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 1 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 1 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-62", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-60", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-60", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-62", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-60", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-62", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.dial",
					"varname" : "Octaves",
					"numoutlets" : 2,
					"activedialcolor" : [ 1.0, 0.341176, 0.619608, 1.0 ],
					"patching_rect" : [ 2598.0, 819.0, 61.0, 47.0 ],
					"outlettype" : [ "", "float" ],
					"presentation" : 1,
					"id" : "obj-133",
					"parameter_enable" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 75.0, 630.0, 61.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 5.0,
							"parameter_mmin" : 1.0,
							"parameter_initial" : [ 5 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Octaves",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Octaves",
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
					"text" : "loadmess 5",
					"numoutlets" : 1,
					"patching_rect" : [ 2606.0, 774.0, 72.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-132",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0.",
					"numoutlets" : 1,
					"patching_rect" : [ 1880.0, 443.0, 75.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-130",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0",
					"numoutlets" : 1,
					"patching_rect" : [ 1048.0, 503.0, 72.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-129",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0",
					"numoutlets" : 1,
					"patching_rect" : [ 728.0, 454.0, 72.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-128",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0",
					"numoutlets" : 1,
					"patching_rect" : [ 247.0, 470.0, 72.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-127",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numoutlets" : 1,
					"patching_rect" : [ 2583.0, 283.0, 60.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-126",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "256",
					"numoutlets" : 1,
					"patching_rect" : [ 2561.0, 331.0, 32.5, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-125",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Onsets",
					"frgb" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 2750.0, 537.0, 67.0, 24.0 ],
					"presentation" : 1,
					"id" : "obj-112",
					"fontname" : "Helvetica Neue",
					"textcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"numinlets" : 1,
					"presentation_rect" : [ 150.0, 600.0, 62.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"patching_rect" : [ 8.0, 580.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-123",
					"rounded" : 30,
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 9.0, 585.0, 130.0, 96.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p constantQ",
					"numoutlets" : 1,
					"patching_rect" : [ 2239.0, 924.0, 188.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-110",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 4,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 335.0, 44.0, 1039.0, 726.0 ],
						"bglocked" : 0,
						"defrect" : [ 335.0, 44.0, 1039.0, 726.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p CQthreshgate",
									"numoutlets" : 1,
									"patching_rect" : [ 192.0, 354.0, 95.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.",
													"linecount" : 6,
													"numoutlets" : 1,
													"patching_rect" : [ 2.0, 350.0, 151.0, 87.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"patching_rect" : [ 140.0, 171.0, 50.0, 20.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r silenceThresh",
													"numoutlets" : 1,
													"patching_rect" : [ 161.0, 123.0, 93.0, 20.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 73.0, 27.0, 25.0, 25.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-9",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numoutlets" : 2,
													"patching_rect" : [ 89.0, 271.0, 50.0, 20.0 ],
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"numoutlets" : 1,
													"patching_rect" : [ 71.0, 239.0, 32.5, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2",
													"numoutlets" : 2,
													"patching_rect" : [ 101.0, 298.0, 44.0, 20.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-41",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0.01",
													"numoutlets" : 1,
													"patching_rect" : [ 69.0, 201.0, 44.0, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"patching_rect" : [ 67.0, 171.0, 50.0, 20.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-25",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "meter~",
													"numoutlets" : 1,
													"patching_rect" : [ 70.0, 90.0, 48.0, 76.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-18",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 285.0, 482.0, 25.0, 25.0 ],
													"id" : "obj-2",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 186.0, 25.0, 25.0, 25.0 ],
													"outlettype" : [ "list" ],
													"id" : "obj-1",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-36", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-41", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p CQthreshgate",
									"numoutlets" : 1,
									"patching_rect" : [ 54.0, 355.0, 95.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-43",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.",
													"linecount" : 6,
													"numoutlets" : 1,
													"patching_rect" : [ 2.0, 350.0, 151.0, 87.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"patching_rect" : [ 140.0, 171.0, 50.0, 20.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r silenceThresh",
													"numoutlets" : 1,
													"patching_rect" : [ 161.0, 123.0, 93.0, 20.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 73.0, 27.0, 25.0, 25.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-9",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numoutlets" : 2,
													"patching_rect" : [ 89.0, 271.0, 50.0, 20.0 ],
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"numoutlets" : 1,
													"patching_rect" : [ 71.0, 239.0, 32.5, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2",
													"numoutlets" : 2,
													"patching_rect" : [ 101.0, 298.0, 44.0, 20.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-41",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0.01",
													"numoutlets" : 1,
													"patching_rect" : [ 69.0, 201.0, 44.0, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"patching_rect" : [ 67.0, 171.0, 50.0, 20.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-25",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "meter~",
													"numoutlets" : 1,
													"patching_rect" : [ 70.0, 90.0, 48.0, 76.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-18",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 285.0, 482.0, 25.0, 25.0 ],
													"id" : "obj-2",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 186.0, 25.0, 25.0, 25.0 ],
													"outlettype" : [ "list" ],
													"id" : "obj-1",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-41", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-36", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 529.0, 30.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 12",
									"numoutlets" : 1,
									"patching_rect" : [ 142.0, 601.0, 32.5, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 60",
									"numoutlets" : 2,
									"patching_rect" : [ 83.0, 626.0, 63.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 12",
									"numoutlets" : 1,
									"patching_rect" : [ 287.0, 597.0, 32.5, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"patching_rect" : [ 409.0, 551.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 60",
									"numoutlets" : 2,
									"patching_rect" : [ 228.0, 622.0, 63.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /constantq/2",
									"numoutlets" : 1,
									"patching_rect" : [ 230.0, 656.0, 123.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate~ 1",
									"numoutlets" : 1,
									"patching_rect" : [ 233.0, 263.0, 51.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "constantQ~",
									"numoutlets" : 1,
									"patching_rect" : [ 235.0, 300.0, 72.0, 20.0 ],
									"outlettype" : [ "list" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /constantq/1",
									"numoutlets" : 1,
									"patching_rect" : [ 73.0, 664.0, 123.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-34",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate~ 1",
									"numoutlets" : 1,
									"patching_rect" : [ 73.0, 262.0, 51.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "constantQ~",
									"numoutlets" : 1,
									"patching_rect" : [ 75.0, 299.0, 72.0, 20.0 ],
									"outlettype" : [ "list" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 379.0, 30.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 180.0, 720.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 115.0, 82.0, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 115.0, 38.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-17",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 82.0, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 37.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.gain~",
									"varname" : "OnsetGain[14]",
									"numoutlets" : 5,
									"interp" : 50.0,
									"clip_size" : 1,
									"patching_rect" : [ 76.0, 163.0, 122.0, 78.0 ],
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"presentation" : 1,
									"id" : "obj-13",
									"display_range" : [ -70.0, 32.0 ],
									"parameter_enable" : 1,
									"numinlets" : 2,
									"presentation_rect" : [ 55.0, 48.0, 77.0, 179.0 ],
									"relative" : 1,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 4,
											"parameter_mmax" : 70.0,
											"parameter_mmin" : -70.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Gain",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "OnsetGain[14]",
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
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 242.5, 285.0, 201.5, 285.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-43", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 82.5, 282.0, 60.0, 282.0, 60.0, 351.0, 63.5, 351.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 418.5, 582.0, 151.5, 582.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 418.5, 582.0, 296.5, 582.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Constant Q\n",
					"frgb" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 2464.0, 879.0, 92.0, 24.0 ],
					"presentation" : 1,
					"id" : "obj-111",
					"fontname" : "Helvetica Neue",
					"textcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 600.0, 86.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio2",
					"numoutlets" : 1,
					"patching_rect" : [ 2449.0, 834.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-113",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio1",
					"numoutlets" : 1,
					"patching_rect" : [ 2224.0, 849.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-114",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numoutlets" : 1,
					"patching_rect" : [ 2359.0, 789.0, 52.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-115",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-isStereo",
					"numoutlets" : 1,
					"patching_rect" : [ 2419.0, 774.0, 71.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-116",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate~",
					"numoutlets" : 1,
					"patching_rect" : [ 2389.0, 879.0, 37.0, 18.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-117",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 2374.0, 984.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"presentation" : 1,
					"id" : "obj-118",
					"numinlets" : 1,
					"presentation_rect" : [ 45.0, 630.0, 16.209871, 16.209871 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p I2O",
					"numoutlets" : 1,
					"patching_rect" : [ 2359.0, 819.0, 36.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-120",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"maxclass" : "message",
									"text" : "0",
									"numoutlets" : 1,
									"patching_rect" : [ 80.0, 127.0, 32.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 127.0, 29.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"numoutlets" : 3,
									"patching_rect" : [ 70.0, 100.0, 46.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-5",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 70.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-84",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 203.0, 25.0, 25.0 ],
									"id" : "obj-85",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "FFT_OnOff[1]",
					"numoutlets" : 2,
					"automationon" : "On",
					"patching_rect" : [ 2359.0, 760.0, 24.0, 16.0 ],
					"outlettype" : [ "", "" ],
					"text" : "Off",
					"presentation" : 1,
					"id" : "obj-121",
					"parameter_enable" : 1,
					"texton" : "On",
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 630.0, 24.0, 16.0 ],
					"automation" : "Off",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "FFT_OnOff[1]",
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
					"text" : "mute~",
					"numoutlets" : 1,
					"patching_rect" : [ 2359.0, 839.0, 40.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-122",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p fftraw",
					"numoutlets" : 1,
					"patching_rect" : [ 1965.0, 615.0, 103.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-90",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 4,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 0.0, 44.0, 1173.0, 698.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 44.0, 1173.0, 698.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 1530.0, 540.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-91",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1515.0, 600.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-92",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1560.0, 510.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-93",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-fftgateval",
									"numoutlets" : 1,
									"patching_rect" : [ 1560.0, 480.0, 84.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-94",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "&&",
									"numoutlets" : 1,
									"patching_rect" : [ 1515.0, 570.0, 49.5, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-95",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1515.0, 510.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-96",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 1320.0, 555.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-85",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1305.0, 615.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-86",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1350.0, 525.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-87",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-fftgateval",
									"numoutlets" : 1,
									"patching_rect" : [ 1350.0, 495.0, 84.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-88",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "&&",
									"numoutlets" : 1,
									"patching_rect" : [ 1305.0, 585.0, 49.5, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-89",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1305.0, 525.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-90",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 1470.0, 240.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-79",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1455.0, 300.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-80",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1500.0, 210.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-81",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-fftgateval",
									"numoutlets" : 1,
									"patching_rect" : [ 1500.0, 180.0, 84.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-82",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "&&",
									"numoutlets" : 1,
									"patching_rect" : [ 1455.0, 270.0, 49.5, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-83",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1455.0, 210.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-84",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 1260.0, 240.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-69",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1245.0, 300.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-70",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1290.0, 210.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-72",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-fftgateval",
									"numoutlets" : 1,
									"patching_rect" : [ 1290.0, 180.0, 84.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-73",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "&&",
									"numoutlets" : 1,
									"patching_rect" : [ 1245.0, 270.0, 49.5, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-77",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1245.0, 210.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-78",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 1065.0, 270.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-57",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1050.0, 330.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-58",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1095.0, 240.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-60",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-fftgateval",
									"numoutlets" : 1,
									"patching_rect" : [ 1095.0, 210.0, 84.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-61",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "&&",
									"numoutlets" : 1,
									"patching_rect" : [ 1050.0, 300.0, 49.5, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-64",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 1050.0, 240.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-67",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 855.0, 270.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-54",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 840.0, 330.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-53",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 885.0, 240.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-52",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-fftgateval",
									"numoutlets" : 1,
									"patching_rect" : [ 885.0, 210.0, 84.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-51",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-fftgateval",
									"numoutlets" : 0,
									"patching_rect" : [ 405.0, 210.0, 86.0, 20.0 ],
									"id" : "obj-48",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "&&",
									"numoutlets" : 1,
									"patching_rect" : [ 840.0, 300.0, 49.5, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 2",
									"numoutlets" : 1,
									"patching_rect" : [ 915.0, -15.0, 35.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-42",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 1",
									"numoutlets" : 1,
									"patching_rect" : [ 855.0, -15.0, 35.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-39",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"numoutlets" : 1,
									"patching_rect" : [ 795.0, -15.0, 35.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-35",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 870.0, -137.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-74",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numoutlets" : 3,
									"types" : [  ],
									"patching_rect" : [ 870.0, -95.0, 100.0, 20.0 ],
									"outlettype" : [ "int", "", "" ],
									"presentation" : 1,
									"id" : "obj-66",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 165.0, 135.0, 100.0, 20.0 ],
									"items" : [ 256, ",", 512, ",", 1024 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 379.0, 158.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /fft/2",
									"numoutlets" : 1,
									"patching_rect" : [ 1454.0, 380.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-46",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "fftpeekR #0-analysis1024R 1024",
									"numoutlets" : 1,
									"patching_rect" : [ 1451.0, 328.0, 184.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-50",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /fft/1",
									"numoutlets" : 1,
									"patching_rect" : [ 1244.0, 388.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-62",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "fftpeek #0-analysis1024L 1024",
									"numoutlets" : 1,
									"patching_rect" : [ 1241.0, 336.0, 173.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-63",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /fft/2",
									"numoutlets" : 1,
									"patching_rect" : [ 1515.0, 682.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "fftpeekR #0-analysis256R 256",
									"numoutlets" : 1,
									"patching_rect" : [ 1512.0, 630.0, 171.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /fft/1",
									"numoutlets" : 1,
									"patching_rect" : [ 1305.0, 690.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-34",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "fftpeek #0-analysis256L 256",
									"numoutlets" : 1,
									"patching_rect" : [ 1302.0, 638.0, 160.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /fft/2",
									"numoutlets" : 1,
									"patching_rect" : [ 1046.0, 386.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "fftpeekR #0-analysis512R 512",
									"numoutlets" : 1,
									"patching_rect" : [ 1044.0, 360.0, 171.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 840.0, 240.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-11",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /fft/1",
									"numoutlets" : 1,
									"patching_rect" : [ 836.0, 394.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "fftpeek #0-analysis512L 512",
									"numoutlets" : 1,
									"patching_rect" : [ 833.0, 362.0, 160.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.text",
									"varname" : "live.text[2]",
									"numoutlets" : 2,
									"patching_rect" : [ 915.0, 15.0, 40.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"text" : "1024",
									"id" : "obj-55",
									"parameter_enable" : 1,
									"texton" : "1024",
									"numinlets" : 1,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 10,
											"parameter_mmax" : 1.0,
											"parameter_mmin" : 0.0,
											"parameter_type" : 2,
											"parameter_initial_enable" : 0,
											"parameter_shortname" : "live.text",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "live.text[3]",
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
, 							{
								"box" : 								{
									"maxclass" : "live.text",
									"varname" : "live.text[1]",
									"numoutlets" : 2,
									"patching_rect" : [ 855.0, 15.0, 40.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"text" : "512",
									"id" : "obj-49",
									"parameter_enable" : 1,
									"texton" : "512",
									"numinlets" : 1,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 10,
											"parameter_mmax" : 1.0,
											"parameter_mmin" : 0.0,
											"parameter_type" : 2,
											"parameter_initial_enable" : 0,
											"parameter_shortname" : "live.text",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "live.text[4]",
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
, 							{
								"box" : 								{
									"maxclass" : "live.text",
									"varname" : "live.text",
									"numoutlets" : 2,
									"patching_rect" : [ 795.0, 15.0, 40.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"text" : "256",
									"id" : "obj-43",
									"parameter_enable" : 1,
									"texton" : "256",
									"numinlets" : 1,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 10,
											"parameter_mmax" : 1.0,
											"parameter_mmin" : 0.0,
											"parameter_type" : 2,
											"parameter_initial_enable" : 0,
											"parameter_shortname" : "live.text",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "live.text[5]",
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pfft~ fftraw 512 args #0-analysis512R",
									"numoutlets" : 0,
									"patching_rect" : [ 501.0, 514.0, 209.0, 20.0 ],
									"id" : "obj-29",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pfft~ fftraw 256 args #0-analysis256R",
									"numoutlets" : 0,
									"patching_rect" : [ 507.0, 586.0, 209.0, 20.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pfft~ fftraw 1024 args #0-analysis1024R",
									"numoutlets" : 0,
									"patching_rect" : [ 501.0, 429.0, 223.0, 20.0 ],
									"id" : "obj-31",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pfft~ fftraw 512 args #0-analysis512L",
									"numoutlets" : 0,
									"patching_rect" : [ 292.0, 519.0, 207.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pfft~ fftraw 256 args #0-analysis256L",
									"numoutlets" : 0,
									"patching_rect" : [ 243.0, 594.0, 207.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pfft~ fftraw 1024 args #0-analysis1024L",
									"numoutlets" : 0,
									"patching_rect" : [ 291.0, 430.0, 221.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 180.0, 720.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 115.0, 210.0, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 115.0, 166.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-17",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 210.0, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 165.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.gain~",
									"varname" : "OnsetGain[13]",
									"numoutlets" : 5,
									"interp" : 50.0,
									"clip_size" : 1,
									"patching_rect" : [ 76.0, 291.0, 64.0, 80.0 ],
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"presentation" : 1,
									"id" : "obj-13",
									"display_range" : [ -70.0, 32.0 ],
									"parameter_enable" : 1,
									"numinlets" : 2,
									"presentation_rect" : [ 55.0, 48.0, 77.0, 179.0 ],
									"relative" : 1,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 4,
											"parameter_mmax" : 70.0,
											"parameter_mmin" : -70.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Gain",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "OnsetGain[13]",
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
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-93", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-87", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1463.5, 420.0, 942.0, 420.0, 942.0, 630.0, 189.5, 630.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 845.5, 435.0, 717.0, 435.0, 717.0, 642.0, 189.5, 642.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1055.5, 669.0, 717.0, 669.0, 717.0, 642.0, 189.5, 642.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1524.5, 702.0, 1398.0, 702.0, 1398.0, 675.0, 189.5, 675.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1253.5, 668.0, 717.0, 668.0, 717.0, 642.0, 189.5, 642.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1314.5, 711.0, 225.0, 711.0, 225.0, 687.0, 189.5, 687.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-96", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-95", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-95", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-95", 0 ],
									"destination" : [ "obj-92", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-95", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-89", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-83", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-77", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-64", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-47", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 85.5, 414.0, 300.5, 414.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 85.5, 453.0, 301.5, 453.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 96.75, 414.0, 510.5, 414.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 96.75, 414.0, 498.0, 414.0, 498.0, 450.0, 510.5, 450.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 96.75, 414.0, 486.0, 414.0, 486.0, 483.0, 516.5, 483.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-23", 0 ],
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
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 85.5, 480.0, 252.5, 480.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-presetMaster",
					"numoutlets" : 1,
					"patching_rect" : [ 239.0, 703.0, 105.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-98",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0-presetMaster",
					"numoutlets" : 0,
					"patching_rect" : [ 914.0, 81.0, 107.0, 20.0 ],
					"id" : "obj-97",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Preset Master",
					"numoutlets" : 0,
					"patching_rect" : [ 895.0, 8.0, 89.0, 20.0 ],
					"id" : "obj-96",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 915.0, 36.0, 25.0, 25.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-95",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read channelPreset.json 0",
					"linecount" : 3,
					"numoutlets" : 1,
					"patching_rect" : [ 210.0, 997.0, 91.0, 46.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-89",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+~",
					"numoutlets" : 1,
					"patching_rect" : [ 555.0, 240.0, 32.5, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-88",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cascade~",
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 285.0, 66.0, 18.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-83",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cascade~",
					"numoutlets" : 1,
					"patching_rect" : [ 300.0, 285.0, 66.0, 18.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-86",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Spectrogram",
					"numoutlets" : 0,
					"patching_rect" : [ 541.0, 104.0, 150.0, 18.0 ],
					"id" : "obj-104",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Type",
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 49.0, 33.0, 18.0 ],
					"id" : "obj-34",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher Filter1",
					"numoutlets" : 2,
					"patching_rect" : [ 630.0, 105.0, 179.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-62",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 5,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 621.0, 305.0, 623.0, 373.0 ],
						"bglocked" : 0,
						"defrect" : [ 621.0, 305.0, 623.0, 373.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial Bold",
						"gridonopen" : 0,
						"gridsize" : [ 8.0, 8.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"numoutlets" : 1,
									"patching_rect" : [ 301.710754, 92.23967, 50.0, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-53",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 1000",
									"numoutlets" : 1,
									"patching_rect" : [ 377.0, 58.0, 50.0, 18.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-3",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"patching_rect" : [ 377.0, 29.0, 55.0, 18.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-1",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ">",
									"numoutlets" : 0,
									"patching_rect" : [ 56.0, 248.0, 19.0, 18.0 ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Note on Active",
									"numoutlets" : 0,
									"patching_rect" : [ 440.0, 16.0, 79.0, 18.0 ],
									"id" : "obj-36",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Convert to amp. >",
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 96.0, 90.0, 18.0 ],
									"id" : "obj-32",
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "When Active is turned off, set Type to peaknotch with amplitude 1. (i. e. the filter is \"flat\") - also gray UI objects out. When Active is turned back on, send the previous Type and Gain values, and turn UI objects back to default appearance.",
									"linecount" : 7,
									"numoutlets" : 0,
									"patching_rect" : [ 440.0, 32.0, 169.0, 87.0 ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "4",
									"numoutlets" : 1,
									"patching_rect" : [ 288.0, 209.0, 32.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"numoutlets" : 1,
									"patching_rect" : [ 72.0, 129.0, 32.5, 18.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-6",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"numoutlets" : 1,
									"patching_rect" : [ 72.0, 224.0, 32.5, 18.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-46",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "l\nl",
									"linecount" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 289.0, 19.0, 29.0 ],
									"id" : "obj-45",
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Prepend \"mode filter-index\" text to filter-type index",
									"linecount" : 3,
									"numoutlets" : 0,
									"patching_rect" : [ 45.0, 308.0, 91.0, 41.0 ],
									"id" : "obj-44",
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Filter types are sorted as indexes",
									"linecount" : 3,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 236.0, 60.0, 41.0 ],
									"id" : "obj-43",
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "< Prepend \"params filter-index\" text to the list",
									"linecount" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 241.0, 272.0, 121.0, 29.0 ],
									"id" : "obj-41",
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "< Pack Freg, Gain and Q into one single list",
									"linecount" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 372.0, 248.0, 68.0, 52.0 ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Activate/desactivate UI objects according to Active value",
									"linecount" : 3,
									"numoutlets" : 0,
									"patching_rect" : [ 451.0, 169.0, 102.0, 41.0 ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To UI objects",
									"numoutlets" : 0,
									"patching_rect" : [ 459.0, 320.0, 73.0, 18.0 ],
									"id" : "obj-34",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u103000644",
									"prototypename" : "M4L.Arial10",
									"numoutlets" : 0,
									"patching_rect" : [ 440.0, 320.0, 18.0, 18.0 ],
									"id" : "obj-35",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "active $1",
									"numoutlets" : 1,
									"patching_rect" : [ 440.0, 152.0, 53.0, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-33",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Coeff.",
									"numoutlets" : 0,
									"patching_rect" : [ 392.0, 88.0, 39.0, 18.0 ],
									"id" : "obj-31",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "mode 0 $1",
									"numoutlets" : 1,
									"patching_rect" : [ 72.0, 272.0, 59.0, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-30",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"prototypename" : "Live",
									"numoutlets" : 2,
									"patching_rect" : [ 72.0, 248.0, 40.0, 18.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-29",
									"fontname" : "Arial Bold",
									"triscale" : 0.75,
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Type",
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 16.0, 37.0, 18.0 ],
									"id" : "obj-26",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u321000639",
									"prototypename" : "M4L.Arial10",
									"numoutlets" : 1,
									"patching_rect" : [ 72.0, 32.0, 18.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-27",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To filtergraph~",
									"numoutlets" : 0,
									"patching_rect" : [ 163.0, 320.0, 80.0, 18.0 ],
									"id" : "obj-25",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u423000645",
									"prototypename" : "M4L.Arial10",
									"numoutlets" : 0,
									"patching_rect" : [ 144.0, 320.0, 18.0, 18.0 ],
									"id" : "obj-52",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hz",
									"numoutlets" : 0,
									"patching_rect" : [ 192.0, 72.0, 23.0, 18.0 ],
									"id" : "obj-23",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"prototypename" : "Live",
									"numoutlets" : 2,
									"patching_rect" : [ 144.0, 72.0, 48.0, 18.0 ],
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-24",
									"fontname" : "Arial Bold",
									"triscale" : 0.75,
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Freq",
									"numoutlets" : 0,
									"patching_rect" : [ 137.0, 16.0, 32.0, 18.0 ],
									"id" : "obj-21",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u432000640",
									"prototypename" : "M4L.Arial10",
									"numoutlets" : 1,
									"patching_rect" : [ 144.0, 32.0, 18.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"prototypename" : "Live",
									"numoutlets" : 2,
									"patching_rect" : [ 352.0, 88.0, 40.0, 18.0 ],
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-18",
									"fontname" : "Arial Bold",
									"triscale" : 0.75,
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Q",
									"numoutlets" : 0,
									"patching_rect" : [ 352.0, 16.0, 19.0, 18.0 ],
									"id" : "obj-15",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u630000642",
									"prototypename" : "M4L.Arial10",
									"numoutlets" : 1,
									"patching_rect" : [ 352.0, 32.0, 18.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Amp.",
									"numoutlets" : 0,
									"patching_rect" : [ 216.0, 184.0, 35.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0/1",
									"numoutlets" : 0,
									"patching_rect" : [ 312.0, 63.735538, 24.0, 18.0 ],
									"id" : "obj-10",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "dB",
									"numoutlets" : 0,
									"patching_rect" : [ 224.0, 72.0, 24.0, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Active",
									"numoutlets" : 0,
									"patching_rect" : [ 288.0, 16.0, 41.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Gain",
									"numoutlets" : 0,
									"patching_rect" : [ 239.0, 16.0, 33.0, 18.0 ],
									"id" : "obj-7",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"prototypename" : "Live",
									"numoutlets" : 2,
									"patching_rect" : [ 248.0, 184.0, 40.0, 18.0 ],
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-5",
									"fontname" : "Arial Bold",
									"triscale" : 0.75,
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 296.0, 63.0, 18.0, 18.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-4",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"prototypename" : "Live",
									"numoutlets" : 2,
									"patching_rect" : [ 248.0, 72.0, 40.0, 18.0 ],
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-2",
									"fontname" : "Arial Bold",
									"triscale" : 0.75,
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend params 0",
									"numoutlets" : 1,
									"patching_rect" : [ 144.0, 272.0, 97.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 100. 1. 1.",
									"numoutlets" : 1,
									"patching_rect" : [ 144.0, 248.0, 227.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1.",
									"numoutlets" : 1,
									"patching_rect" : [ 312.0, 169.0, 32.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"numoutlets" : 3,
									"patching_rect" : [ 296.0, 112.0, 50.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-12",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"numoutlets" : 1,
									"patching_rect" : [ 248.0, 160.0, 32.5, 18.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-11",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u804000643",
									"prototypename" : "M4L.Arial10",
									"numoutlets" : 1,
									"patching_rect" : [ 296.0, 32.0, 18.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-100",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u744000641",
									"prototypename" : "M4L.Arial10",
									"numoutlets" : 1,
									"patching_rect" : [ 248.0, 32.0, 18.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-98",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dbtoa",
									"numoutlets" : 1,
									"patching_rect" : [ 248.0, 96.0, 38.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-94",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-53", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-94", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-100", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Arial Bold",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Arial Bold"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.menu",
					"varname" : "Type[1]",
					"numoutlets" : 3,
					"patching_rect" : [ 630.0, 65.0, 41.0, 15.0 ],
					"outlettype" : [ "", "", "float" ],
					"presentation" : 1,
					"id" : "obj-76",
					"parameter_enable" : 1,
					"pictures" : [  ],
					"numinlets" : 1,
					"presentation_rect" : [ 105.0, 15.0, 75.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_enum" : [ "lowpass", "highpass", "bandpass", "bandstop", "peaknotch", "lowshelf", "highshelf", "resonant", "allpass" ],
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 127.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 5.0 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Type",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Type[1]",
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
					"varname" : "Active[1]",
					"numoutlets" : 2,
					"automationon" : "On",
					"patching_rect" : [ 758.0, 65.0, 24.0, 16.0 ],
					"outlettype" : [ "", "" ],
					"text" : "Off",
					"presentation" : 1,
					"id" : "obj-77",
					"parameter_enable" : 1,
					"texton" : "On",
					"numinlets" : 1,
					"presentation_rect" : [ 195.0, 15.0, 24.0, 16.0 ],
					"automation" : "Off",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 1 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Active[1]",
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
					"maxclass" : "live.dial",
					"varname" : "Gain[1]",
					"numoutlets" : 2,
					"activedialcolor" : [ 1.0, 0.921569, 0.0, 1.0 ],
					"patching_rect" : [ 710.0, 49.0, 44.0, 47.0 ],
					"outlettype" : [ "", "float" ],
					"id" : "obj-79",
					"parameter_enable" : 1,
					"numinlets" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 0.515151,
							"parameter_unitstyle" : 4,
							"parameter_mmax" : 30.0,
							"parameter_mmin" : -70.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Gain",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Gain[1]",
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
					"maxclass" : "live.dial",
					"varname" : "Freq[1]",
					"numoutlets" : 2,
					"activedialcolor" : [ 0.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 670.0, 49.0, 44.0, 47.0 ],
					"outlettype" : [ "", "float" ],
					"id" : "obj-80",
					"parameter_enable" : 1,
					"numinlets" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 4.25,
							"parameter_unitstyle" : 3,
							"parameter_mmax" : 18000.0,
							"parameter_mmin" : 50.0,
							"parameter_initial" : [ 100 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Freq",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Freq[1]",
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
					"maxclass" : "live.dial",
					"varname" : "Q[1]",
					"numoutlets" : 2,
					"activedialcolor" : [ 0.396078, 1.0, 0.396078, 1.0 ],
					"patching_rect" : [ 790.0, 49.0, 44.0, 47.0 ],
					"outlettype" : [ "", "float" ],
					"id" : "obj-81",
					"parameter_enable" : 1,
					"numinlets" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 3.5,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 10.0,
							"parameter_mmin" : 0.1,
							"parameter_initial" : [ 1.0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Q",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Q[1]",
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
					"maxclass" : "live.dial",
					"varname" : "snapshot_buffersize",
					"numoutlets" : 2,
					"activedialcolor" : [ 1.0, 0.337255, 0.619608, 1.0 ],
					"patching_rect" : [ 2505.0, 420.0, 58.0, 45.0 ],
					"outlettype" : [ "", "float" ],
					"presentation" : 1,
					"activeneedlecolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"id" : "obj-41",
					"parameter_enable" : 1,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"presentation_rect" : [ 210.0, 420.0, 55.0, 45.0 ],
					"focusbordercolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 2048.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 1024 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "BufferSize",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "snapshot_buffersize",
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
					"maxclass" : "comment",
					"text" : "Snapshot",
					"frgb" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 2550.0, 600.0, 79.0, 24.0 ],
					"presentation" : 1,
					"id" : "obj-75",
					"fontname" : "Helvetica Neue",
					"textcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"numinlets" : 1,
					"presentation_rect" : [ 150.0, 405.0, 81.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio2",
					"numoutlets" : 1,
					"patching_rect" : [ 2580.0, 525.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-71",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio1",
					"numoutlets" : 1,
					"patching_rect" : [ 2325.0, 540.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-73",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "FFT",
					"frgb" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 2190.0, 570.0, 84.0, 24.0 ],
					"presentation" : 1,
					"id" : "obj-70",
					"fontname" : "Helvetica Neue",
					"textcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 495.0, 53.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "FFT_resolution",
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 2205.0, 495.0, 100.0, 20.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"id" : "obj-69",
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor2" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 556.0, 62.0, 20.0 ],
					"items" : [ 256, ",", 512, ",", 1024 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio2",
					"numoutlets" : 1,
					"patching_rect" : [ 2175.0, 525.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-64",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio1",
					"numoutlets" : 1,
					"patching_rect" : [ 1950.0, 540.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-67",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio2",
					"numoutlets" : 1,
					"patching_rect" : [ 2873.0, 497.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-58",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio1",
					"numoutlets" : 1,
					"patching_rect" : [ 2746.0, 573.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-57",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Amplitude",
					"frgb" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 1785.0, 480.0, 79.0, 24.0 ],
					"presentation" : 1,
					"id" : "obj-56",
					"fontname" : "Helvetica Neue",
					"textcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"numinlets" : 1,
					"presentation_rect" : [ 150.0, 495.0, 81.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.dial",
					"varname" : "amplitude_smooth",
					"numoutlets" : 2,
					"activedialcolor" : [ 1.0, 0.337255, 0.619608, 1.0 ],
					"patching_rect" : [ 1785.0, 570.0, 44.0, 45.0 ],
					"outlettype" : [ "", "float" ],
					"presentation" : 1,
					"activeneedlecolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"id" : "obj-55",
					"parameter_enable" : 1,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"presentation_rect" : [ 210.0, 525.0, 55.0, 45.0 ],
					"focusbordercolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Smooth",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "amplitude_smooth",
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
					"text" : "receive~ #0-audio2",
					"numoutlets" : 1,
					"patching_rect" : [ 1755.0, 525.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-53",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio1",
					"numoutlets" : 1,
					"patching_rect" : [ 1575.0, 600.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-54",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mel Spec.",
					"frgb" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 1380.0, 435.0, 78.0, 24.0 ],
					"presentation" : 1,
					"id" : "obj-52",
					"fontname" : "Helvetica Neue",
					"textcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 405.0, 75.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.dial",
					"varname" : "melscalebands[1]",
					"numoutlets" : 2,
					"activedialcolor" : [ 1.0, 0.337255, 0.619608, 1.0 ],
					"patching_rect" : [ 1425.0, 585.0, 56.0, 45.0 ],
					"outlettype" : [ "", "float" ],
					"presentation" : 1,
					"activeneedlecolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"id" : "obj-51",
					"parameter_enable" : 1,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"presentation_rect" : [ 87.0, 420.0, 51.0, 45.0 ],
					"focusbordercolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 4.0,
							"parameter_initial" : [ 24 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Num Bands",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "melscalebands[1]",
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
					"text" : "receive~ #0-audio2",
					"numoutlets" : 1,
					"patching_rect" : [ 1395.0, 540.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-48",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio1",
					"numoutlets" : 1,
					"patching_rect" : [ 1215.0, 600.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-49",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.dial",
					"varname" : "spread_smooth",
					"numoutlets" : 2,
					"activedialcolor" : [ 1.0, 0.337255, 0.619608, 1.0 ],
					"patching_rect" : [ 990.0, 585.0, 44.0, 45.0 ],
					"outlettype" : [ "", "float" ],
					"presentation" : 1,
					"activeneedlecolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"id" : "obj-32",
					"parameter_enable" : 1,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"presentation_rect" : [ 210.0, 345.0, 55.0, 45.0 ],
					"focusbordercolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Smooth",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "spread_smooth",
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
					"maxclass" : "comment",
					"text" : "Spread",
					"frgb" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 945.0, 465.0, 80.0, 24.0 ],
					"presentation" : 1,
					"id" : "obj-30",
					"fontname" : "Helvetica Neue",
					"textcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"numinlets" : 1,
					"presentation_rect" : [ 150.0, 345.0, 73.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio2",
					"numoutlets" : 1,
					"patching_rect" : [ 960.0, 555.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio1",
					"numoutlets" : 1,
					"patching_rect" : [ 795.0, 555.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-29",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.dial",
					"varname" : "centroid_smooth",
					"numoutlets" : 2,
					"activedialcolor" : [ 1.0, 0.337255, 0.619608, 1.0 ],
					"patching_rect" : [ 675.0, 510.0, 44.0, 45.0 ],
					"outlettype" : [ "", "float" ],
					"presentation" : 1,
					"activeneedlecolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"id" : "obj-26",
					"parameter_enable" : 1,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"presentation_rect" : [ 90.0, 345.0, 44.0, 45.0 ],
					"focusbordercolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Smooth",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "centroid_smooth",
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
					"maxclass" : "comment",
					"text" : "Centroid",
					"frgb" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 615.0, 465.0, 79.0, 24.0 ],
					"presentation" : 1,
					"id" : "obj-25",
					"fontname" : "Helvetica Neue",
					"textcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 345.0, 72.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio2",
					"numoutlets" : 1,
					"patching_rect" : [ 645.0, 570.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-21",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio1",
					"numoutlets" : 1,
					"patching_rect" : [ 450.0, 555.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-20",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r toPattrstorage",
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 870.0, 93.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-47",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s fromPattrstorage",
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 945.0, 109.0, 20.0 ],
					"id" : "obj-43",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p preset_info",
					"numoutlets" : 2,
					"patching_rect" : [ 555.0, 735.0, 80.0, 20.0 ],
					"outlettype" : [ "int", "" ],
					"id" : "obj-39",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 640.0, 75.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 640.0, 75.0, 640.0, 480.0 ],
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
									"text" : "prepend set",
									"numoutlets" : 1,
									"patching_rect" : [ 343.0, 298.0, 74.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "fromsymbol",
									"numoutlets" : 1,
									"patching_rect" : [ 324.0, 216.0, 73.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-223",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 s",
									"numoutlets" : 2,
									"patching_rect" : [ 264.0, 186.0, 69.0, 20.0 ],
									"outlettype" : [ "int", "" ],
									"id" : "obj-220",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route slotname",
									"numoutlets" : 2,
									"patching_rect" : [ 234.0, 156.0, 90.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-218",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s toPattrstorage",
									"numoutlets" : 0,
									"patching_rect" : [ 129.0, 231.0, 95.0, 20.0 ],
									"id" : "obj-216",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend getslotname",
									"numoutlets" : 1,
									"patching_rect" : [ 129.0, 201.0, 123.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-215",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route recall",
									"numoutlets" : 2,
									"patching_rect" : [ 129.0, 171.0, 70.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-213",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r fromPattrstorage",
									"numoutlets" : 1,
									"patching_rect" : [ 147.0, 80.0, 107.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-214",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 422.0, 376.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 86.0, 371.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-220", 1 ],
									"destination" : [ "obj-223", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-218", 0 ],
									"destination" : [ "obj-220", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-214", 0 ],
									"destination" : [ "obj-218", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-215", 0 ],
									"destination" : [ "obj-216", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-213", 0 ],
									"destination" : [ "obj-215", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-214", 0 ],
									"destination" : [ "obj-213", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-220", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-223", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p nameset",
					"numoutlets" : 1,
					"patching_rect" : [ 555.0, 810.0, 67.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-44",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 550.0, 150.0, 252.0, 280.0 ],
						"bglocked" : 0,
						"defrect" : [ 550.0, 150.0, 252.0, 280.0 ],
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
									"text" : "loadmess 1",
									"numoutlets" : 1,
									"patching_rect" : [ 54.0, 59.0, 72.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 107.0, 231.0, 25.0, 25.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 16.0, 22.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-2",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 107.0, 24.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend slotname",
									"numoutlets" : 1,
									"patching_rect" : [ 103.0, 179.0, 107.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"numoutlets" : 2,
									"patching_rect" : [ 102.0, 86.0, 61.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numoutlets" : 1,
									"patching_rect" : [ 16.0, 93.0, 74.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend",
									"numoutlets" : 1,
									"patching_rect" : [ 103.0, 134.0, 55.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"minimum" : 1,
					"patching_rect" : [ 555.0, 765.0, 59.0, 28.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1,
					"id" : "obj-45",
					"fontname" : "Helvetica Neue",
					"triscale" : 0.0,
					"fontsize" : 18.0,
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 225.0, 52.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "<(unnamed)>",
					"numoutlets" : 4,
					"patching_rect" : [ 615.0, 765.0, 233.0, 29.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"presentation" : 1,
					"id" : "obj-46",
					"fontname" : "Helvetica Neue",
					"keymode" : 1,
					"fontface" : 1,
					"fontsize" : 18.0,
					"numinlets" : 1,
					"presentation_rect" : [ 75.0, 225.0, 193.0, 28.0 ],
					"outputmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"bgovercolor" : [ 0.082353, 0.25098, 0.431373, 1.0 ],
					"patching_rect" : [ 240.0, 810.0, 115.0, 26.0 ],
					"outlettype" : [ "", "", "int" ],
					"text" : "Save Presets",
					"presentation" : 1,
					"id" : "obj-40",
					"fontname" : "Helvetica Neue",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgoncolor" : [ 0.239216, 0.643137, 0.709804, 1.0 ],
					"fontface" : 1,
					"fontsize" : 11.0,
					"bgcolor" : [ 0.082353, 0.25098, 0.431373, 1.0 ],
					"numinlets" : 1,
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 180.0, 165.0, 87.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"bgovercolor" : [ 0.082353, 0.25098, 0.431373, 1.0 ],
					"patching_rect" : [ 375.0, 810.0, 115.0, 26.0 ],
					"outlettype" : [ "", "", "int" ],
					"text" : "Load Presets",
					"presentation" : 1,
					"id" : "obj-38",
					"fontname" : "Helvetica Neue",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgoncolor" : [ 0.239216, 0.643137, 0.709804, 1.0 ],
					"fontface" : 1,
					"fontsize" : 11.0,
					"bgcolor" : [ 0.082353, 0.25098, 0.431373, 1.0 ],
					"numinlets" : 1,
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 180.0, 195.0, 87.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read",
					"numoutlets" : 1,
					"patching_rect" : [ 375.0, 840.0, 35.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-37",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "write",
					"numoutlets" : 1,
					"patching_rect" : [ 240.0, 840.0, 36.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "u516005391",
					"text" : "autopattr",
					"numoutlets" : 4,
					"patching_rect" : [ 30.0, 945.0, 59.5, 20.0 ],
					"outlettype" : [ "", "", "", "" ],
					"id" : "obj-35",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"restore" : 					{
						"Active[1]" : [ 0.0 ],
						"AmplitudeOnOff" : [ 0.0 ],
						"EZThreshOnOff" : [ 0.0 ],
						"FFT_OnOff" : [ 0.0 ],
						"FFT_OnOff[1]" : [ 0.0 ],
						"FFT_resolution" : [ 1 ],
						"FFT_resolution[1]" : [ 0 ],
						"Freq[1]" : [ 100.0 ],
						"Gain[1]" : [ 0.0 ],
						"Mel_Bang_Thresh" : [ 0.5 ],
						"Mel_OnOff" : [ 0.0 ],
						"Octaves" : [ 5.0 ],
						"OnsetSensitivity" : [ 0.996063 ],
						"OnsetSensitivity[1]" : [ 250.0 ],
						"Q[1]" : [ 1.0 ],
						"SnapshotOnOff[1]" : [ 0.0 ],
						"Type[1]" : [ 5.0 ],
						"amplitude_smooth" : [ 0.0 ],
						"centroid_OnOff" : [ 0.0 ],
						"centroid_smooth" : [ 0.0 ],
						"instance_name" : [ "global" ],
						"melscalebands[1]" : [ 64.0 ],
						"pitch_OnOff" : [ 0.0 ],
						"pitch_high_thresh" : [ 300.0 ],
						"pitch_low_thresh" : [ 0.0 ],
						"pitch_smooth" : [ 0.0 ],
						"snapshot_buffersize" : [ 256.0 ],
						"spread_OnOff" : [ 0.0 ],
						"spread_smooth" : [ 0.0 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "preset",
					"numoutlets" : 4,
					"bubblesize" : 22,
					"patching_rect" : [ 240.0, 735.0, 173.0, 56.0 ],
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"presentation" : 1,
					"id" : "obj-33",
					"textcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 135.0, 155.0, 83.0 ],
					"pattrstorage" : "channelPreset"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "storagewindow",
					"numoutlets" : 1,
					"patching_rect" : [ 120.0, 840.0, 91.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-42",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clientwindow",
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 840.0, 79.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "channelPreset",
					"text" : "pattrstorage channelPreset",
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 915.0, 155.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"saved_object_attributes" : 					{
						"storage_rect" : [ 583, 69, 1036, 466 ],
						"client_rect" : [ 4, 44, 470, 487 ],
						"parameter_enable" : 0,
						"paraminitmode" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.dial",
					"varname" : "pitch_high_thresh",
					"numoutlets" : 2,
					"activedialcolor" : [ 1.0, 0.337255, 0.619608, 1.0 ],
					"patching_rect" : [ 345.0, 570.0, 59.0, 45.0 ],
					"outlettype" : [ "", "float" ],
					"presentation" : 1,
					"activeneedlecolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"id" : "obj-22",
					"parameter_enable" : 1,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"presentation_rect" : [ 210.0, 270.0, 55.0, 45.0 ],
					"focusbordercolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 300.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 300.0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "HighThresh",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "pitch_high_thresh",
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
					"maxclass" : "live.dial",
					"varname" : "pitch_low_thresh",
					"numoutlets" : 2,
					"activedialcolor" : [ 1.0, 0.337255, 0.619608, 1.0 ],
					"patching_rect" : [ 270.0, 570.0, 59.0, 45.0 ],
					"outlettype" : [ "", "float" ],
					"presentation" : 1,
					"activeneedlecolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"id" : "obj-23",
					"parameter_enable" : 1,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"presentation_rect" : [ 150.0, 270.0, 50.0, 45.0 ],
					"focusbordercolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 1000.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "LowThresh",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "pitch_low_thresh",
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
					"maxclass" : "live.dial",
					"varname" : "pitch_smooth",
					"numoutlets" : 2,
					"activedialcolor" : [ 1.0, 0.337255, 0.619608, 1.0 ],
					"patching_rect" : [ 225.0, 570.0, 50.0, 45.0 ],
					"outlettype" : [ "", "float" ],
					"presentation" : 1,
					"activeneedlecolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"id" : "obj-27",
					"parameter_enable" : 1,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"presentation_rect" : [ 90.0, 270.0, 50.0, 45.0 ],
					"focusbordercolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Smooth",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "pitch_smooth",
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
					"text" : "pass~",
					"numoutlets" : 1,
					"patching_rect" : [ 300.0, 90.0, 43.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pass~",
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 90.0, 43.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "send #0-isStereo",
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 75.0, 101.0, 20.0 ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stereo/Mono\n",
					"numoutlets" : 0,
					"patching_rect" : [ 435.0, 15.0, 89.0, 20.0 ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 450.0, 45.0, 25.0, 25.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-14",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pitch",
					"frgb" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 465.0, 51.0, 24.0 ],
					"presentation" : 1,
					"id" : "obj-13",
					"fontname" : "Helvetica Neue",
					"textcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 270.0, 51.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 1215.0, 1099.0, 25.0, 25.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio2",
					"numoutlets" : 1,
					"patching_rect" : [ 195.0, 540.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ #0-audio1",
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 570.0, 113.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "send~ #0-audio2",
					"numoutlets" : 0,
					"patching_rect" : [ 300.0, 330.0, 100.0, 20.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Audio In 2",
					"numoutlets" : 0,
					"patching_rect" : [ 285.0, 15.0, 65.0, 20.0 ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 300.0, 45.0, 25.0, 25.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "send~ #0-audio1",
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 330.0, 100.0, 20.0 ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Audio In 1",
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 15.0, 65.0, 20.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 45.0, 25.0, 25.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numoutlets" : 1,
					"patching_rect" : [ 2460.0, 480.0, 52.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-220",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numoutlets" : 1,
					"patching_rect" : [ 2085.0, 480.0, 52.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-219",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numoutlets" : 1,
					"patching_rect" : [ 2836.0, 468.0, 52.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-216",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numoutlets" : 1,
					"patching_rect" : [ 1665.0, 450.0, 52.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-215",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 450.0, 52.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-214",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numoutlets" : 1,
					"patching_rect" : [ 555.0, 465.0, 52.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-213",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numoutlets" : 1,
					"patching_rect" : [ 885.0, 465.0, 52.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-212",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numoutlets" : 1,
					"patching_rect" : [ 1305.0, 450.0, 52.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-59",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-isStereo",
					"numoutlets" : 1,
					"patching_rect" : [ 600.0, 540.0, 71.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-152",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate~",
					"numoutlets" : 1,
					"patching_rect" : [ 600.0, 600.0, 37.0, 18.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-153",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 555.0, 690.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"presentation" : 1,
					"id" : "obj-203",
					"numinlets" : 1,
					"presentation_rect" : [ 45.0, 375.0, 16.209871, 16.209871 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p centroid",
					"numoutlets" : 1,
					"patching_rect" : [ 555.0, 630.0, 155.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-206",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 5,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 526.0, 44.0, 754.0, 520.0 ],
						"bglocked" : 0,
						"defrect" : [ 526.0, 44.0, 754.0, 520.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 507.0, 28.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/zsa_centroid/2 0.",
									"linecount" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 356.0, 485.0, 52.0, 46.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 539.0, 158.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 620.0, 87.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p I2O",
									"numoutlets" : 1,
									"patching_rect" : [ 192.0, 452.0, 36.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-200",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"numoutlets" : 1,
													"patching_rect" : [ 80.0, 127.0, 32.5, 16.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-16",
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 127.0, 29.5, 16.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"numoutlets" : 3,
													"patching_rect" : [ 70.0, 100.0, 46.0, 18.0 ],
													"outlettype" : [ "bang", "bang", "" ],
													"id" : "obj-5",
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 70.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-84",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 60.0, 203.0, 25.0, 25.0 ],
													"id" : "obj-85",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-85", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-85", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numoutlets" : 1,
									"patching_rect" : [ 183.0, 488.0, 34.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0.",
									"numoutlets" : 3,
									"patching_rect" : [ 430.0, 364.0, 63.0, 20.0 ],
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0.",
									"numoutlets" : 3,
									"patching_rect" : [ 57.0, 383.0, 63.0, 20.0 ],
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"patching_rect" : [ 533.0, 324.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"presentation" : 1,
									"id" : "obj-41",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 120.0, 239.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"patching_rect" : [ 44.0, 337.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"presentation" : 1,
									"id" : "obj-40",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 45.0, 239.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "slide 0. 0.",
									"numoutlets" : 1,
									"patching_rect" : [ 469.0, 318.0, 62.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.dial",
									"varname" : "FiddleSmooth[2]",
									"numoutlets" : 2,
									"patching_rect" : [ 511.0, 59.0, 44.0, 47.0 ],
									"outlettype" : [ "", "float" ],
									"presentation" : 1,
									"id" : "obj-31",
									"parameter_enable" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 192.0, 151.0, 44.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 1,
											"parameter_mmax" : 100.0,
											"parameter_mmin" : 0.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Smooth",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "FiddleSmooth[2]",
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "slide 0. 0.",
									"numoutlets" : 1,
									"patching_rect" : [ 110.0, 296.0, 62.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-33",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numoutlets" : 1,
									"patching_rect" : [ 449.0, 391.0, 34.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-29",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r reportingInterval",
									"numoutlets" : 1,
									"patching_rect" : [ 616.0, 263.0, 105.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "snapshot~ 16.666",
									"numoutlets" : 1,
									"patching_rect" : [ 473.0, 294.0, 106.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /zsa_centroid/2",
									"numoutlets" : 1,
									"patching_rect" : [ 399.0, 427.0, 139.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zsa.easy_centroid~ 1024 8",
									"numoutlets" : 1,
									"patching_rect" : [ 438.0, 266.0, 154.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r reportingInterval",
									"numoutlets" : 1,
									"patching_rect" : [ 258.0, 242.0, 105.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "snapshot~ 16.666",
									"numoutlets" : 1,
									"patching_rect" : [ 115.0, 272.0, 106.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numoutlets" : 1,
									"patching_rect" : [ 286.0, 151.0, 32.5, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 1000",
									"numoutlets" : 1,
									"patching_rect" : [ 286.0, 122.0, 69.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"patching_rect" : [ 273.0, 73.0, 60.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 24.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-35",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 70.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-32",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"numoutlets" : 1,
									"patching_rect" : [ 222.0, 117.0, 44.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /zsa_centroid/1",
									"numoutlets" : 1,
									"patching_rect" : [ 48.0, 421.0, 139.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zsa.easy_centroid~ 1024 8",
									"numoutlets" : 1,
									"patching_rect" : [ 80.0, 245.0, 154.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 196.0, 528.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 118.0, 80.999992, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 118.0, 36.999992, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-17",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 58.0, 80.999992, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 58.0, 35.999992, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.gain~",
									"varname" : "OnsetGain[12]",
									"numoutlets" : 5,
									"interp" : 50.0,
									"clip_size" : 1,
									"patching_rect" : [ 90.0, 135.0, 40.0, 80.0 ],
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"presentation" : 1,
									"id" : "obj-13",
									"display_range" : [ -70.0, 32.0 ],
									"parameter_enable" : 1,
									"numinlets" : 2,
									"presentation_rect" : [ 55.0, 48.0, 77.0, 179.0 ],
									"relative" : 1,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 4,
											"parameter_mmax" : 70.0,
											"parameter_mmin" : -70.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Gain",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "OnsetGain[12]",
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
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-33", 2 ],
									"hidden" : 0,
									"midpoints" : [ 548.5, 211.5, 162.5, 211.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-33", 1 ],
									"hidden" : 0,
									"midpoints" : [ 548.5, 211.5, 141.0, 211.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-36", 1 ],
									"hidden" : 0,
									"midpoints" : [ 548.5, 222.5, 500.0, 222.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-36", 2 ],
									"hidden" : 0,
									"midpoints" : [ 548.5, 222.5, 521.5, 222.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-200", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-200", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p I2O",
					"numoutlets" : 1,
					"patching_rect" : [ 555.0, 495.0, 36.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-207",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"maxclass" : "message",
									"text" : "0",
									"numoutlets" : 1,
									"patching_rect" : [ 80.0, 127.0, 32.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 127.0, 29.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"numoutlets" : 3,
									"patching_rect" : [ 70.0, 100.0, 46.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-5",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 70.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-84",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 203.0, 25.0, 25.0 ],
									"id" : "obj-85",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "centroid_OnOff",
					"numoutlets" : 2,
					"automationon" : "On",
					"patching_rect" : [ 555.0, 435.0, 24.0, 16.0 ],
					"outlettype" : [ "", "" ],
					"text" : "Off",
					"presentation" : 1,
					"id" : "obj-208",
					"parameter_enable" : 1,
					"texton" : "On",
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 375.0, 24.0, 16.0 ],
					"automation" : "Off",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "centroid_OnOff",
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
					"text" : "mute~",
					"numoutlets" : 1,
					"patching_rect" : [ 555.0, 525.0, 40.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-209",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-isStereo",
					"numoutlets" : 1,
					"patching_rect" : [ 930.0, 525.0, 71.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-193",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate~",
					"numoutlets" : 1,
					"patching_rect" : [ 915.0, 600.0, 37.0, 18.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-194",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 893.0, 698.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"presentation" : 1,
					"id" : "obj-196",
					"numinlets" : 1,
					"presentation_rect" : [ 180.0, 375.0, 16.209871, 16.209871 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p spread",
					"numoutlets" : 1,
					"patching_rect" : [ 893.0, 638.0, 100.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-199",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 5,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 189.0, 44.0, 753.0, 714.0 ],
						"bglocked" : 0,
						"defrect" : [ 189.0, 44.0, 753.0, 714.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p threshgate",
									"numoutlets" : 1,
									"patching_rect" : [ 504.0, 453.0, 77.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-46",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"patching_rect" : [ 155.0, 186.0, 50.0, 20.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r silenceThresh",
													"numoutlets" : 1,
													"patching_rect" : [ 176.0, 138.0, 93.0, 20.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 73.0, 27.0, 25.0, 25.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-9",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.",
													"numoutlets" : 1,
													"patching_rect" : [ 93.0, 336.0, 32.5, 20.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numoutlets" : 2,
													"patching_rect" : [ 89.0, 271.0, 50.0, 20.0 ],
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"numoutlets" : 1,
													"patching_rect" : [ 71.0, 239.0, 32.5, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2",
													"numoutlets" : 2,
													"patching_rect" : [ 101.0, 298.0, 44.0, 20.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-41",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0.01",
													"numoutlets" : 1,
													"patching_rect" : [ 69.0, 201.0, 44.0, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"patching_rect" : [ 67.0, 171.0, 50.0, 20.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-25",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "meter~",
													"numoutlets" : 1,
													"patching_rect" : [ 70.0, 90.0, 48.0, 76.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-18",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 184.0, 407.0, 25.0, 25.0 ],
													"id" : "obj-2",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 186.0, 25.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-36", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-41", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p threshgate",
									"numoutlets" : 1,
									"patching_rect" : [ 128.0, 451.0, 77.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-43",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"patching_rect" : [ 140.0, 171.0, 50.0, 20.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r silenceThresh",
													"numoutlets" : 1,
													"patching_rect" : [ 161.0, 123.0, 93.0, 20.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 73.0, 27.0, 25.0, 25.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-9",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.",
													"numoutlets" : 1,
													"patching_rect" : [ 93.0, 336.0, 32.5, 20.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numoutlets" : 2,
													"patching_rect" : [ 89.0, 271.0, 50.0, 20.0 ],
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"numoutlets" : 1,
													"patching_rect" : [ 71.0, 239.0, 32.5, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2",
													"numoutlets" : 2,
													"patching_rect" : [ 101.0, 298.0, 44.0, 20.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-41",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0.01",
													"numoutlets" : 1,
													"patching_rect" : [ 69.0, 201.0, 44.0, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"patching_rect" : [ 67.0, 171.0, 50.0, 20.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-25",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "meter~",
													"numoutlets" : 1,
													"patching_rect" : [ 70.0, 90.0, 48.0, 76.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-18",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 184.0, 407.0, 25.0, 25.0 ],
													"id" : "obj-2",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 186.0, 25.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-36", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-41", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 501.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 460.0, 173.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 639.0, 196.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p I2O",
									"numoutlets" : 1,
									"patching_rect" : [ 171.0, 86.0, 36.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-200",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"numoutlets" : 1,
													"patching_rect" : [ 80.0, 127.0, 32.5, 16.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-16",
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 127.0, 29.5, 16.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"numoutlets" : 3,
													"patching_rect" : [ 70.0, 100.0, 46.0, 18.0 ],
													"outlettype" : [ "bang", "bang", "" ],
													"id" : "obj-5",
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 70.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-84",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 60.0, 203.0, 25.0, 25.0 ],
													"id" : "obj-85",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-85", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-85", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numoutlets" : 1,
									"patching_rect" : [ 221.0, 611.0, 34.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0.",
									"numoutlets" : 3,
									"patching_rect" : [ 593.0, 415.0, 63.0, 20.0 ],
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0.",
									"numoutlets" : 3,
									"patching_rect" : [ 167.0, 382.0, 63.0, 20.0 ],
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"patching_rect" : [ 616.0, 382.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"presentation" : 1,
									"id" : "obj-42",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 195.0, 270.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"patching_rect" : [ 270.0, 361.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"presentation" : 1,
									"id" : "obj-39",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 120.0, 270.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "slide 0. 0.",
									"numoutlets" : 1,
									"patching_rect" : [ 548.0, 380.0, 62.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.dial",
									"varname" : "FiddleSmooth[1]",
									"numoutlets" : 2,
									"patching_rect" : [ 500.0, 81.0, 44.0, 47.0 ],
									"outlettype" : [ "", "float" ],
									"presentation" : 1,
									"id" : "obj-31",
									"parameter_enable" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 192.0, 151.0, 44.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 1,
											"parameter_mmax" : 100.0,
											"parameter_mmin" : 0.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Smooth",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "FiddleSmooth[1]",
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "slide 0. 0.",
									"numoutlets" : 1,
									"patching_rect" : [ 168.0, 350.0, 62.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-34",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r reportingInterval",
									"numoutlets" : 1,
									"patching_rect" : [ 616.0, 263.0, 105.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /zsa_spread/2",
									"numoutlets" : 1,
									"patching_rect" : [ 431.0, 557.0, 133.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "snapshot~ 16.666",
									"numoutlets" : 1,
									"patching_rect" : [ 474.0, 345.0, 106.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sqrt~",
									"numoutlets" : 1,
									"patching_rect" : [ 428.0, 317.0, 38.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zsa.easy_spread~ 1024 8",
									"numoutlets" : 1,
									"patching_rect" : [ 438.0, 266.0, 148.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r reportingInterval",
									"numoutlets" : 1,
									"patching_rect" : [ 258.0, 242.0, 105.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /zsa_spread/1",
									"numoutlets" : 1,
									"patching_rect" : [ 232.0, 557.0, 133.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "snapshot~ 16.666",
									"numoutlets" : 1,
									"patching_rect" : [ 116.0, 324.0, 106.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sqrt~",
									"numoutlets" : 1,
									"patching_rect" : [ 70.0, 296.0, 38.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numoutlets" : 1,
									"patching_rect" : [ 441.0, 527.0, 34.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numoutlets" : 1,
									"patching_rect" : [ 286.0, 151.0, 32.5, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 1000",
									"numoutlets" : 1,
									"patching_rect" : [ 286.0, 122.0, 69.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"patching_rect" : [ 273.0, 73.0, 60.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 24.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-35",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 70.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-32",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"numoutlets" : 1,
									"patching_rect" : [ 222.0, 117.0, 44.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zsa.easy_spread~ 1024 8",
									"numoutlets" : 1,
									"patching_rect" : [ 80.0, 245.0, 148.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 219.0, 664.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 118.0, 80.999992, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 118.0, 36.999992, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-17",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 58.0, 80.999992, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 58.0, 35.999992, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.gain~",
									"varname" : "OnsetGain[11]",
									"numoutlets" : 5,
									"interp" : 50.0,
									"clip_size" : 1,
									"patching_rect" : [ 90.0, 135.0, 68.0, 79.0 ],
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"presentation" : 1,
									"id" : "obj-13",
									"display_range" : [ -70.0, 32.0 ],
									"parameter_enable" : 1,
									"numinlets" : 2,
									"presentation_rect" : [ 55.0, 48.0, 77.0, 179.0 ],
									"relative" : 1,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 4,
											"parameter_mmax" : 70.0,
											"parameter_mmin" : -70.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Gain",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "OnsetGain[11]",
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
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "standarddeviation:",
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 263.0, 150.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-45",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 15.0, 270.0, 150.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "spread:",
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 238.0, 150.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-44",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 75.0, 240.0, 150.0, 20.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-37", 2 ],
									"hidden" : 0,
									"midpoints" : [ 469.5, 253.5, 600.5, 253.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-37", 1 ],
									"hidden" : 0,
									"midpoints" : [ 469.5, 253.5, 579.0, 253.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-34", 1 ],
									"hidden" : 0,
									"midpoints" : [ 469.5, 238.5, 199.0, 238.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-34", 2 ],
									"hidden" : 0,
									"midpoints" : [ 469.5, 238.5, 220.5, 238.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-47", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-47", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-200", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-200", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-43", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-46", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p I2O",
					"numoutlets" : 1,
					"patching_rect" : [ 885.0, 495.0, 36.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-200",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"maxclass" : "message",
									"text" : "0",
									"numoutlets" : 1,
									"patching_rect" : [ 80.0, 127.0, 32.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 127.0, 29.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"numoutlets" : 3,
									"patching_rect" : [ 70.0, 100.0, 46.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-5",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 70.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-84",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 203.0, 25.0, 25.0 ],
									"id" : "obj-85",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "spread_OnOff",
					"numoutlets" : 2,
					"automationon" : "On",
					"patching_rect" : [ 885.0, 435.0, 24.0, 16.0 ],
					"outlettype" : [ "", "" ],
					"text" : "Off",
					"presentation" : 1,
					"id" : "obj-201",
					"parameter_enable" : 1,
					"texton" : "On",
					"numinlets" : 1,
					"presentation_rect" : [ 150.0, 375.0, 24.0, 16.0 ],
					"automation" : "Off",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "spread_OnOff",
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
					"text" : "mute~",
					"numoutlets" : 1,
					"patching_rect" : [ 885.0, 525.0, 40.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-202",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-isStereo",
					"numoutlets" : 1,
					"patching_rect" : [ 1365.0, 480.0, 71.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate~",
					"numoutlets" : 1,
					"patching_rect" : [ 1335.0, 615.0, 37.0, 18.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-11",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 1389.0, 696.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"presentation" : 1,
					"id" : "obj-16",
					"numinlets" : 1,
					"presentation_rect" : [ 45.0, 435.0, 16.209871, 16.209871 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p melscale",
					"numoutlets" : 2,
					"patching_rect" : [ 1305.0, 645.0, 111.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-50",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 5,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 0.0, 44.0, 841.0, 457.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 44.0, 841.0, 457.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 406.0, 25.0, 25.0 ],
									"id" : "obj-16",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 540.0, -27.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 470.0, 88.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 331.0, 99.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numoutlets" : 1,
									"patching_rect" : [ 221.0, 447.0, 34.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p I2O",
									"numoutlets" : 1,
									"patching_rect" : [ 205.0, 387.0, 36.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-116",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"numoutlets" : 1,
													"patching_rect" : [ 80.0, 127.0, 32.5, 16.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-16",
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 127.0, 29.5, 16.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"numoutlets" : 3,
													"patching_rect" : [ 70.0, 100.0, 46.0, 18.0 ],
													"outlettype" : [ "bang", "bang", "" ],
													"id" : "obj-5",
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 70.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-84",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 60.0, 203.0, 25.0, 25.0 ],
													"id" : "obj-85",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-85", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-85", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numoutlets" : 1,
									"patching_rect" : [ 302.0, 281.0, 34.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"minimum" : 4,
									"patching_rect" : [ 469.0, 164.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"maximum" : 100,
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 24.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-35",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.dial",
									"varname" : "melscalebands",
									"numoutlets" : 2,
									"activedialcolor" : [ 0.396078, 1.0, 0.396078, 1.0 ],
									"patching_rect" : [ 447.0, 0.0, 61.0, 47.0 ],
									"outlettype" : [ "", "float" ],
									"presentation" : 1,
									"id" : "obj-33",
									"parameter_enable" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 141.0, 82.0, 63.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 0,
											"parameter_mmax" : 100.0,
											"parameter_mmin" : 4.0,
											"parameter_initial" : [ 24 ],
											"parameter_type" : 1,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Num Bands",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "melscalebands",
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
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 70.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-32",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"numoutlets" : 1,
									"patching_rect" : [ 222.0, 117.0, 44.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Number of bands",
									"numoutlets" : 0,
									"patching_rect" : [ 536.0, 148.0, 150.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-23",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 219.0, 91.0, 286.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /zsa_mel/2",
									"numoutlets" : 1,
									"patching_rect" : [ 326.0, 311.0, 116.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zsa.easy_mel~ 1024 4",
									"numoutlets" : 1,
									"patching_rect" : [ 328.0, 240.0, 131.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /zsa_mel/1",
									"numoutlets" : 1,
									"patching_rect" : [ 86.0, 303.0, 116.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zsa.easy_mel~ 1024 4",
									"numoutlets" : 1,
									"patching_rect" : [ 80.0, 245.0, 131.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 196.0, 528.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 118.0, 80.999992, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 118.0, 36.999992, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-17",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 58.0, 80.999992, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 58.0, 35.999992, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.gain~",
									"varname" : "OnsetGain[9]",
									"numoutlets" : 5,
									"interp" : 50.0,
									"clip_size" : 1,
									"patching_rect" : [ 90.0, 135.0, 40.0, 80.0 ],
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"presentation" : 1,
									"id" : "obj-13",
									"display_range" : [ -70.0, 32.0 ],
									"parameter_enable" : 1,
									"numinlets" : 2,
									"presentation_rect" : [ 55.0, 48.0, 77.0, 179.0 ],
									"relative" : 1,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 4,
											"parameter_mmax" : 70.0,
											"parameter_mmin" : -70.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Gain",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "OnsetGain[9]",
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
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-116", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-116", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p I2O",
					"numoutlets" : 1,
					"patching_rect" : [ 1305.0, 480.0, 36.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-63",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"maxclass" : "message",
									"text" : "0",
									"numoutlets" : 1,
									"patching_rect" : [ 80.0, 127.0, 32.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 127.0, 29.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"numoutlets" : 3,
									"patching_rect" : [ 70.0, 100.0, 46.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-5",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 70.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-84",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 203.0, 25.0, 25.0 ],
									"id" : "obj-85",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "Mel_OnOff",
					"numoutlets" : 2,
					"automationon" : "On",
					"patching_rect" : [ 1305.0, 420.0, 24.0, 16.0 ],
					"outlettype" : [ "", "" ],
					"text" : "Off",
					"presentation" : 1,
					"id" : "obj-85",
					"parameter_enable" : 1,
					"texton" : "On",
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 435.0, 24.0, 16.0 ],
					"automation" : "Off",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Mel_OnOff",
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
					"text" : "mute~",
					"numoutlets" : 1,
					"patching_rect" : [ 1305.0, 510.0, 40.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-143",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-isStereo",
					"numoutlets" : 1,
					"patching_rect" : [ 123.0, 540.0, 71.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-176",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate~",
					"numoutlets" : 1,
					"patching_rect" : [ 120.0, 585.0, 37.0, 18.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-177",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p I2O",
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 480.0, 36.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-178",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
									"maxclass" : "message",
									"text" : "0",
									"numoutlets" : 1,
									"patching_rect" : [ 80.0, 127.0, 32.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 127.0, 29.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"numoutlets" : 3,
									"patching_rect" : [ 70.0, 100.0, 46.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-5",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 70.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-84",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 203.0, 25.0, 25.0 ],
									"id" : "obj-85",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "pitch_OnOff",
					"numoutlets" : 2,
					"automationon" : "On",
					"patching_rect" : [ 105.0, 420.0, 24.0, 16.0 ],
					"outlettype" : [ "", "" ],
					"text" : "Off",
					"presentation" : 1,
					"id" : "obj-179",
					"parameter_enable" : 1,
					"texton" : "On",
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 300.0, 24.0, 16.0 ],
					"automation" : "Off",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "pitch_OnOff",
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
					"text" : "mute~",
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 510.0, 40.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-180",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p fiddle",
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 645.0, 95.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-184",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 6,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 489.0, 44.0, 791.0, 591.0 ],
						"bglocked" : 0,
						"defrect" : [ 489.0, 44.0, 791.0, 591.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 463.0, 175.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-34",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 361.0, 176.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-32",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 289.0, 176.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numoutlets" : 1,
									"patching_rect" : [ 138.0, 621.0, 34.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-29",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 190.0, 564.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 448.0, 282.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 362.0, 279.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 294.0, 274.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "smoothed and bounded output",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 22.0, 392.0, 150.0, 34.0 ],
									"presentation" : 1,
									"id" : "obj-35",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 26.0, 303.0, 150.0, 34.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "raw output",
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 250.0, 150.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-33",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 20.0, 250.0, 150.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"patching_rect" : [ 161.0, 385.0, 78.0, 17.0 ],
									"outlettype" : [ "float", "bang" ],
									"presentation" : 1,
									"id" : "obj-31",
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"presentation_rect" : [ 115.0, 274.0, 78.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0.",
									"numoutlets" : 2,
									"patching_rect" : [ 162.0, 301.0, 61.0, 17.0 ],
									"outlettype" : [ "float", "float" ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $f1 < $f2 then $f1",
									"numoutlets" : 1,
									"patching_rect" : [ 149.0, 478.0, 114.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $f1 > $f2 then $f1",
									"numoutlets" : 1,
									"patching_rect" : [ 123.0, 441.0, 114.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $f1 < $f2 then $f1",
									"numoutlets" : 1,
									"patching_rect" : [ 27.0, 473.0, 114.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $f1 > $f2 then $f1",
									"numoutlets" : 1,
									"patching_rect" : [ 1.0, 436.0, 114.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.dial",
									"varname" : "FiddleHighThresh",
									"numoutlets" : 2,
									"patching_rect" : [ 461.0, 212.0, 65.0, 47.0 ],
									"outlettype" : [ "", "float" ],
									"presentation" : 1,
									"id" : "obj-16",
									"parameter_enable" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 222.0, 166.0, 78.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 1,
											"parameter_mmax" : 300.0,
											"parameter_mmin" : 0.0,
											"parameter_initial" : [ 300.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "HighThresh",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "FiddleHighThresh",
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
, 							{
								"box" : 								{
									"maxclass" : "live.dial",
									"varname" : "FiddleLowThresh",
									"numoutlets" : 2,
									"patching_rect" : [ 365.0, 213.0, 65.0, 47.0 ],
									"outlettype" : [ "", "float" ],
									"presentation" : 1,
									"id" : "obj-11",
									"parameter_enable" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 131.0, 165.0, 84.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 1,
											"parameter_mmax" : 1000.0,
											"parameter_mmin" : 0.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "LowThresh",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "FiddleLowThresh",
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
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"patching_rect" : [ 25.0, 384.0, 78.0, 17.0 ],
									"outlettype" : [ "float", "bang" ],
									"presentation" : 1,
									"id" : "obj-6",
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"presentation_rect" : [ 32.0, 273.0, 78.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0.",
									"numoutlets" : 2,
									"patching_rect" : [ 36.0, 296.0, 61.0, 17.0 ],
									"outlettype" : [ "float", "float" ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "fiddle~ 1024 1 20 3",
									"numoutlets" : 5,
									"patching_rect" : [ 167.0, 252.0, 87.0, 17.0 ],
									"outlettype" : [ "float", "bang", "list", "float", "list" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "fiddle~ 1024 1 20 3",
									"numoutlets" : 5,
									"patching_rect" : [ 60.0, 261.0, 87.0, 17.0 ],
									"outlettype" : [ "float", "bang", "list", "float", "list" ],
									"id" : "obj-64",
									"fontname" : "Arial",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /pitch/2",
									"numoutlets" : 1,
									"patching_rect" : [ 133.0, 649.0, 97.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.dial",
									"varname" : "FiddleSmooth",
									"numoutlets" : 2,
									"patching_rect" : [ 293.0, 217.0, 44.0, 47.0 ],
									"outlettype" : [ "", "float" ],
									"presentation" : 1,
									"id" : "obj-27",
									"parameter_enable" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 147.0, 106.0, 44.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 1,
											"parameter_mmax" : 100.0,
											"parameter_mmin" : 0.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Smooth",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "FiddleSmooth",
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "slide 0. 0.",
									"numoutlets" : 1,
									"patching_rect" : [ 41.0, 552.0, 62.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "slide 0. 0.",
									"numoutlets" : 1,
									"patching_rect" : [ 106.0, 552.0, 62.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"patching_rect" : [ 53.0, 611.0, 59.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"presentation" : 1,
									"id" : "obj-21",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 39.0, 334.0, 59.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"patching_rect" : [ 239.0, 611.0, 59.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"presentation" : 1,
									"id" : "obj-20",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 102.0, 334.0, 59.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0.",
									"numoutlets" : 3,
									"patching_rect" : [ 40.0, 582.0, 63.0, 20.0 ],
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0.",
									"numoutlets" : 3,
									"patching_rect" : [ 106.0, 582.0, 63.0, 20.0 ],
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /pitch/1",
									"numoutlets" : 1,
									"patching_rect" : [ 4.0, 633.0, 97.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 190.0, 722.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 140.0, 88.0, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 140.0, 44.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-17",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 80.0, 88.0, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 80.0, 43.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.gain~",
									"varname" : "OnsetGain[8]",
									"numoutlets" : 5,
									"interp" : 50.0,
									"clip_size" : 1,
									"patching_rect" : [ 112.0, 142.0, 40.0, 80.0 ],
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"presentation" : 1,
									"id" : "obj-13",
									"display_range" : [ -70.0, 32.0 ],
									"parameter_enable" : 1,
									"numinlets" : 2,
									"presentation_rect" : [ 45.0, 45.0, 77.0, 179.0 ],
									"relative" : 1,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 4,
											"parameter_mmax" : 70.0,
											"parameter_mmin" : -70.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Gain",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "OnsetGain[8]",
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
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-23", 2 ],
									"hidden" : 0,
									"midpoints" : [ 303.5, 345.5, 158.5, 345.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [ 303.5, 353.5, 137.0, 353.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-24", 2 ],
									"hidden" : 0,
									"midpoints" : [ 303.5, 347.5, 93.5, 347.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0,
									"midpoints" : [ 303.5, 348.5, 72.0, 348.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-28", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-26", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 2 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 13.5, 686.5, 199.5, 686.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 49.5, 610.5, 13.5, 610.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 199.5, 618.0, 147.5, 618.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 690.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"presentation" : 1,
					"id" : "obj-185",
					"numinlets" : 1,
					"presentation_rect" : [ 45.0, 300.0, 17.862764, 17.862764 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-isStereo",
					"numoutlets" : 1,
					"patching_rect" : [ 2504.0, 523.0, 71.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-168",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate~",
					"numoutlets" : 1,
					"patching_rect" : [ 2520.0, 570.0, 37.0, 18.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-169",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-isStereo",
					"numoutlets" : 1,
					"patching_rect" : [ 2145.0, 465.0, 71.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-166",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate~",
					"numoutlets" : 1,
					"patching_rect" : [ 2115.0, 570.0, 37.0, 18.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-167",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-isStereo",
					"numoutlets" : 1,
					"patching_rect" : [ 2866.0, 543.0, 71.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-162",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate~",
					"numoutlets" : 1,
					"patching_rect" : [ 2866.0, 573.0, 37.0, 18.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-163",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-isStereo",
					"numoutlets" : 1,
					"patching_rect" : [ 1695.0, 570.0, 71.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-159",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate~",
					"numoutlets" : 1,
					"patching_rect" : [ 1695.0, 615.0, 37.0, 18.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-160",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 2475.0, 675.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"presentation" : 1,
					"id" : "obj-144",
					"numinlets" : 1,
					"presentation_rect" : [ 180.0, 435.0, 17.862764, 17.862764 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p I2O",
					"numoutlets" : 1,
					"patching_rect" : [ 2460.0, 510.0, 36.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-145",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"maxclass" : "message",
									"text" : "0",
									"numoutlets" : 1,
									"patching_rect" : [ 80.0, 127.0, 32.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 127.0, 29.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"numoutlets" : 3,
									"patching_rect" : [ 70.0, 100.0, 46.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-5",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 70.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-84",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 203.0, 25.0, 25.0 ],
									"id" : "obj-85",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "SnapshotOnOff[1]",
					"numoutlets" : 2,
					"automationon" : "On",
					"patching_rect" : [ 2460.0, 450.0, 24.0, 16.0 ],
					"outlettype" : [ "", "" ],
					"text" : "Off",
					"presentation" : 1,
					"id" : "obj-146",
					"parameter_enable" : 1,
					"texton" : "On",
					"numinlets" : 1,
					"presentation_rect" : [ 150.0, 435.0, 24.0, 16.0 ],
					"automation" : "Off",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "SnapshotOnOff[1]",
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
					"text" : "mute~",
					"numoutlets" : 1,
					"patching_rect" : [ 2460.0, 540.0, 40.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-147",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p snapshot",
					"numoutlets" : 1,
					"patching_rect" : [ 2460.0, 615.0, 90.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-151",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 5,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 309.0, 44.0, 789.0, 655.0 ],
						"bglocked" : 0,
						"defrect" : [ 309.0, 44.0, 789.0, 655.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 266.0, -60.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 276.0, 46.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "round",
									"numoutlets" : 1,
									"patching_rect" : [ 262.0, 67.0, 100.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"patching_rect" : [ 274.0, 601.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl 5000 len",
									"numoutlets" : 2,
									"patching_rect" : [ 292.0, 573.0, 100.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 661.0, 138.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-51",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p uziqueue",
									"numoutlets" : 1,
									"patching_rect" : [ 309.5, 466.5, 69.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-48",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"numoutlets" : 1,
													"patching_rect" : [ 42.0, 59.0, 60.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numoutlets" : 1,
													"patching_rect" : [ 70.5, 112.5, 32.5, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-34",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numoutlets" : 1,
													"patching_rect" : [ 113.5, 134.5, 34.0, 20.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-32",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"numoutlets" : 1,
													"patching_rect" : [ 107.5, 109.5, 32.5, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-31",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 1024",
													"numoutlets" : 3,
													"patching_rect" : [ 82.5, 172.5, 56.0, 20.0 ],
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 119.5, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-44",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 128.5, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-45",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 119.5, 270.0, 25.0, 25.0 ],
													"id" : "obj-46",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 2 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [ 110.5, 202.5, 56.5, 202.5, 56.5, 109.5, 80.0, 109.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [ 123.0, 154.5, 104.5, 154.5, 104.5, 106.5, 117.0, 106.5 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p uziqueue",
									"numoutlets" : 1,
									"patching_rect" : [ 154.5, 451.5, 69.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 839.0, 179.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 839.0, 179.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"numoutlets" : 1,
													"patching_rect" : [ 31.0, 38.0, 60.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numoutlets" : 1,
													"patching_rect" : [ 70.5, 112.5, 32.5, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-34",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numoutlets" : 1,
													"patching_rect" : [ 113.5, 134.5, 34.0, 20.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-32",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"numoutlets" : 1,
													"patching_rect" : [ 107.5, 109.5, 32.5, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-31",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 1024",
													"numoutlets" : 3,
													"patching_rect" : [ 82.5, 172.5, 56.0, 20.0 ],
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 119.5, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-44",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 163.5, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-45",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 119.5, 270.0, 25.0, 25.0 ],
													"id" : "obj-46",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [ 123.0, 154.5, 104.5, 154.5, 104.5, 106.5, 117.0, 106.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [ 110.5, 202.5, 56.5, 202.5, 56.5, 109.5, 80.0, 109.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 2 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"numoutlets" : 1,
									"patching_rect" : [ 65.0, 548.0, 32.5, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-42",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"numoutlets" : 1,
									"patching_rect" : [ 84.0, 598.0, 24.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numoutlets" : 1,
									"patching_rect" : [ 321.0, 420.0, 34.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r reportingInterval",
									"numoutlets" : 1,
									"patching_rect" : [ 454.0, 298.0, 105.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.dial",
									"varname" : "BufferSize",
									"numoutlets" : 2,
									"activedialcolor" : [ 0.396078, 1.0, 0.396078, 1.0 ],
									"patching_rect" : [ 270.0, -8.0, 90.369576, 47.0 ],
									"outlettype" : [ "", "float" ],
									"presentation" : 1,
									"id" : "obj-41",
									"parameter_enable" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 136.0, 169.0, 94.418617, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 0,
											"parameter_mmax" : 2048.0,
											"parameter_mmin" : 0.0,
											"parameter_initial" : [ 1024 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "BufferSize",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "BufferSize",
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
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 521.0, 251.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-39",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"numoutlets" : 2,
									"patching_rect" : [ 562.0, 209.0, 36.0, 20.0 ],
									"outlettype" : [ "bang", "" ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ snapshotR 1000",
									"numoutlets" : 2,
									"patching_rect" : [ 696.0, 384.0, 139.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-29",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "poke~ snapshotR",
									"numoutlets" : 0,
									"patching_rect" : [ 138.0, 365.0, 104.0, 20.0 ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl 2048 group 1023",
									"numoutlets" : 2,
									"patching_rect" : [ 386.0, 539.0, 113.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "peek~ snapshotR",
									"numoutlets" : 1,
									"patching_rect" : [ 395.0, 511.0, 104.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 552.0, 118.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"numoutlets" : 1,
									"patching_rect" : [ 161.0, 267.0, 33.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl 2048 group 1023",
									"numoutlets" : 2,
									"patching_rect" : [ 143.0, 566.0, 113.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "peek~ snapshotL",
									"numoutlets" : 1,
									"patching_rect" : [ 150.0, 524.0, 102.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ snapshotL 1000",
									"numoutlets" : 2,
									"patching_rect" : [ 558.0, 386.0, 136.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"patching_rect" : [ 325.0, 99.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "count~",
									"numoutlets" : 1,
									"patching_rect" : [ 145.0, 295.0, 47.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "poke~ snapshotL",
									"numoutlets" : 0,
									"patching_rect" : [ 21.0, 365.0, 102.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"patching_rect" : [ 315.0, 300.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-40",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 0",
									"numoutlets" : 1,
									"patching_rect" : [ 337.0, 278.0, 72.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 16.666",
									"numoutlets" : 1,
									"patching_rect" : [ 325.0, 328.0, 81.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /snapshot/2",
									"numoutlets" : 1,
									"patching_rect" : [ 372.0, 604.0, 120.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /snapshot/1",
									"numoutlets" : 1,
									"patching_rect" : [ 181.0, 626.0, 120.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 319.0, 699.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 145.0, 124.0, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 145.0, 80.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-17",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 85.0, 124.0, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 85.0, 79.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.gain~",
									"varname" : "OnsetGain[7]",
									"numoutlets" : 5,
									"interp" : 50.0,
									"clip_size" : 1,
									"patching_rect" : [ 117.0, 178.0, 40.0, 80.0 ],
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"presentation" : 1,
									"id" : "obj-13",
									"display_range" : [ -70.0, 32.0 ],
									"parameter_enable" : 1,
									"numinlets" : 2,
									"presentation_rect" : [ 55.0, 48.0, 77.0, 179.0 ],
									"relative" : 1,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 4,
											"parameter_mmax" : 70.0,
											"parameter_mmin" : -70.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Gain",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "OnsetGain[7]",
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
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-48", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-47", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-40", 0 ],
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
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-28", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 2101.0, 740.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"presentation" : 1,
					"id" : "obj-119",
					"numinlets" : 1,
					"presentation_rect" : [ 45.0, 525.0, 16.209871, 16.209871 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p I2O",
					"numoutlets" : 1,
					"patching_rect" : [ 2085.0, 510.0, 36.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-136",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"maxclass" : "message",
									"text" : "0",
									"numoutlets" : 1,
									"patching_rect" : [ 80.0, 127.0, 32.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 127.0, 29.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"numoutlets" : 3,
									"patching_rect" : [ 70.0, 100.0, 46.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-5",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 70.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-84",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 203.0, 25.0, 25.0 ],
									"id" : "obj-85",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "FFT_OnOff",
					"numoutlets" : 2,
					"automationon" : "On",
					"patching_rect" : [ 2085.0, 451.0, 24.0, 16.0 ],
					"outlettype" : [ "", "" ],
					"text" : "Off",
					"presentation" : 1,
					"id" : "obj-137",
					"parameter_enable" : 1,
					"texton" : "On",
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 525.0, 24.0, 16.0 ],
					"automation" : "Off",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "FFT_OnOff",
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
					"text" : "mute~",
					"numoutlets" : 1,
					"patching_rect" : [ 2085.0, 530.0, 40.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-142",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"numoutlets" : 2,
					"patching_rect" : [ 1305.0, 1024.0, 56.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-108",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "instance_name",
					"text" : "global",
					"numoutlets" : 4,
					"patching_rect" : [ 1305.0, 994.0, 85.0, 17.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"presentation" : 1,
					"id" : "obj-107",
					"fontname" : "Arial Bold",
					"keymode" : 1,
					"lines" : 1,
					"autoscroll" : 0,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 15.0, 85.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p makeOSCaddress",
					"numoutlets" : 1,
					"patching_rect" : [ 1215.0, 1054.0, 105.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-101",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 580.0, 400.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 580.0, 400.0, 640.0, 480.0 ],
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
									"text" : "t l l",
									"numoutlets" : 2,
									"patching_rect" : [ 245.0, 103.0, 32.5, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl 4096 slice 2",
									"numoutlets" : 2,
									"patching_rect" : [ 276.0, 151.0, 87.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend",
									"numoutlets" : 1,
									"patching_rect" : [ 362.0, 288.0, 55.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numoutlets" : 1,
									"patching_rect" : [ 205.0, 235.0, 74.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numoutlets" : 1,
									"patching_rect" : [ 377.0, 71.0, 74.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 376.0, 37.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend",
									"numoutlets" : 1,
									"patching_rect" : [ 232.0, 80.0, 55.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf /analyser/%s%s",
									"numoutlets" : 1,
									"patching_rect" : [ 221.0, 195.0, 119.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-105",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 294.0, 338.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 235.0, 43.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-105", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-105", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 2851.0, 648.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"presentation" : 1,
					"id" : "obj-74",
					"numinlets" : 1,
					"presentation_rect" : [ 180.0, 640.0, 34.209873, 34.209873 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p onsetDetector",
					"numoutlets" : 1,
					"patching_rect" : [ 2836.0, 603.0, 226.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-92",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 5,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 321.0, 88.0, 590.0, 599.0 ],
						"bglocked" : 0,
						"defrect" : [ 321.0, 88.0, 590.0, 599.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 490.0, 30.999992, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-9",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 497.0, 122.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 425.0, 30.999992, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 413.0, 122.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/ezbeat/1 bang",
									"numoutlets" : 1,
									"patching_rect" : [ 214.0, 423.0, 90.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+~",
									"numoutlets" : 1,
									"patching_rect" : [ 106.0, 240.0, 32.5, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 216.0, 320.0, 43.0, 43.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-57",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p onset_detector",
									"numoutlets" : 1,
									"patching_rect" : [ 186.0, 285.0, 235.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-56",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 4,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 25.0, 69.0, 783.0, 674.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 783.0, 674.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"numoutlets" : 1,
													"patching_rect" : [ 662.0, 311.0, 35.0, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numoutlets" : 1,
													"patching_rect" : [ 660.0, 364.0, 20.0, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-14",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numoutlets" : 1,
													"patching_rect" : [ 177.0, 434.0, 59.0, 20.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 687.0, 213.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 539.0, 215.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numoutlets" : 2,
													"patching_rect" : [ 539.0, 307.0, 50.0, 20.0 ],
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess 1",
													"numoutlets" : 1,
													"patching_rect" : [ 301.0, 420.0, 72.0, 20.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 375.0, 210.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pass~",
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 75.0, 43.0, 20.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"patching_rect" : [ 375.0, 270.0, 50.0, 20.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-52",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 0.",
													"numoutlets" : 1,
													"patching_rect" : [ 123.0, 397.0, 32.5, 20.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-51",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"patching_rect" : [ 195.0, 391.0, 44.0, 20.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-50",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"patching_rect" : [ 195.0, 331.0, 44.0, 20.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-49",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "split 0. 100000.",
													"numoutlets" : 2,
													"patching_rect" : [ 60.0, 240.0, 92.0, 20.0 ],
													"outlettype" : [ "float", "float" ],
													"id" : "obj-48",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p diff",
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 180.0, 36.0, 20.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-43",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 25.0, 69.0, 224.0, 310.0 ],
														"bglocked" : 0,
														"defrect" : [ 25.0, 69.0, 224.0, 310.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"numoutlets" : 2,
																	"patching_rect" : [ 101.0, 144.0, 50.0, 20.0 ],
																	"outlettype" : [ "float", "bang" ],
																	"id" : "obj-42",
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "bucket",
																	"numoutlets" : 1,
																	"patching_rect" : [ 95.0, 108.0, 46.0, 20.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-32",
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"numoutlets" : 2,
																	"patching_rect" : [ 50.0, 204.0, 50.0, 20.0 ],
																	"outlettype" : [ "float", "bang" ],
																	"id" : "obj-17",
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"numoutlets" : 2,
																	"patching_rect" : [ 50.0, 69.0, 50.0, 20.0 ],
																	"outlettype" : [ "float", "bang" ],
																	"id" : "obj-15",
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 0.",
																	"numoutlets" : 1,
																	"patching_rect" : [ 50.0, 174.0, 32.5, 20.0 ],
																	"outlettype" : [ "float" ],
																	"id" : "obj-9",
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 239.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 50.0, 27.0, 25.0, 25.0 ],
																	"outlettype" : [ "float" ],
																	"id" : "obj-1",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-42", 0 ],
																	"destination" : [ "obj-9", 1 ],
																	"hidden" : 0,
																	"midpoints" : [ 110.5, 165.0, 75.0, 165.0, 75.0, 171.0, 73.0, 171.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-42", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 104.5, 138.0, 110.5, 138.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 59.5, 105.0, 104.5, 105.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"patching_rect" : [ 60.0, 210.0, 50.0, 20.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "meter~",
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 105.0, 38.0, 64.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-4",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numoutlets" : 1,
													"patching_rect" : [ 135.0, 645.0, 32.5, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-40",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "del 250",
													"numoutlets" : 1,
													"patching_rect" : [ 135.0, 615.0, 50.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-38",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"numoutlets" : 1,
													"patching_rect" : [ 210.0, 615.0, 32.5, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-37",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numoutlets" : 1,
													"patching_rect" : [ 210.0, 480.0, 20.0, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-35",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numoutlets" : 1,
													"patching_rect" : [ 105.0, 510.0, 34.0, 20.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-34",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1.",
													"numoutlets" : 1,
													"patching_rect" : [ 195.0, 361.0, 32.5, 20.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"patching_rect" : [ 105.0, 540.0, 42.0, 42.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-22",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"patching_rect" : [ 105.0, 480.0, 36.0, 20.0 ],
													"outlettype" : [ "bang", "" ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : ">",
													"numoutlets" : 1,
													"patching_rect" : [ 105.0, 450.0, 32.5, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"patching_rect" : [ 120.0, 331.0, 44.0, 20.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p mean_and_std",
													"numoutlets" : 2,
													"patching_rect" : [ 120.0, 301.0, 97.0, 20.0 ],
													"outlettype" : [ "float", "float" ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"fontsize" : 11.59518,
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 25.0, 69.0, 255.0, 225.0 ],
														"bglocked" : 0,
														"defrect" : [ 25.0, 69.0, 255.0, 225.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 120.0, 165.0, 25.0, 25.0 ],
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "list-std-deviation",
																	"numoutlets" : 1,
																	"patching_rect" : [ 120.0, 120.0, 83.0, 18.0 ],
																	"outlettype" : [ "float" ],
																	"id" : "obj-79",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl stream 50",
																	"numoutlets" : 2,
																	"patching_rect" : [ 45.0, 90.0, 74.0, 20.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-30",
																	"fontname" : "Arial",
																	"fontsize" : 11.595187,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "mean",
																	"numoutlets" : 2,
																	"patching_rect" : [ 45.0, 120.0, 40.0, 20.0 ],
																	"outlettype" : [ "float", "int" ],
																	"id" : "obj-32",
																	"fontname" : "Arial",
																	"fontsize" : 11.595187,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 45.0, 45.0, 25.0, 25.0 ],
																	"outlettype" : [ "float" ],
																	"id" : "obj-37",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 45.0, 165.0, 25.0, 25.0 ],
																	"id" : "obj-38",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-79", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 54.5, 114.0, 129.5, 114.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-79", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1000.",
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 270.0, 49.0, 20.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 60.0, 630.0, 25.0, 25.0 ],
													"id" : "obj-3",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 30.0, 25.0, 25.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-1",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 114.5, 615.0, 69.5, 615.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [ 144.5, 663.0, 195.0, 663.0, 195.0, 477.0, 219.5, 477.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [ 219.5, 633.0, 195.0, 633.0, 195.0, 477.0, 219.5, 477.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [ 114.5, 600.0, 219.5, 600.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [ 219.5, 510.0, 141.0, 510.0, 141.0, 507.0, 114.5, 507.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-34", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [ 114.5, 600.0, 144.5, 600.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-51", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [ 69.5, 420.0, 114.5, 420.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 69.5, 300.0, 129.5, 300.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-38", 1 ],
													"hidden" : 0,
													"midpoints" : [ 548.5, 600.0, 175.5, 600.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [ 132.5, 429.0, 226.5, 429.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 669.5, 405.0, 249.0, 405.0, 249.0, 429.0, 186.5, 429.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 312.0, 30.999992, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 312.0, 122.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 196.0, 528.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 118.0, 80.999992, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 118.0, 36.999992, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-17",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 58.0, 80.999992, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 58.0, 35.999992, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.gain~",
									"varname" : "OnsetGain[3]",
									"numoutlets" : 5,
									"interp" : 50.0,
									"clip_size" : 1,
									"patching_rect" : [ 90.0, 135.0, 122.0, 69.0 ],
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"presentation" : 1,
									"id" : "obj-13",
									"display_range" : [ -70.0, 32.0 ],
									"parameter_enable" : 1,
									"numinlets" : 2,
									"presentation_rect" : [ 55.0, 48.0, 77.0, 179.0 ],
									"relative" : 1,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 4,
											"parameter_mmax" : 70.0,
											"parameter_mmin" : -70.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Gain",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "OnsetGain[3]",
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
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-56", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-56", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-56", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p I2O",
					"numoutlets" : 1,
					"patching_rect" : [ 2836.0, 498.0, 36.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-65",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"maxclass" : "message",
									"text" : "0",
									"numoutlets" : 1,
									"patching_rect" : [ 80.0, 127.0, 32.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 127.0, 29.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"numoutlets" : 3,
									"patching_rect" : [ 70.0, 100.0, 46.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-5",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 70.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-84",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 203.0, 25.0, 25.0 ],
									"id" : "obj-85",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "EZThreshOnOff",
					"numoutlets" : 2,
					"automationon" : "On",
					"patching_rect" : [ 2836.0, 438.0, 24.0, 16.0 ],
					"outlettype" : [ "", "" ],
					"text" : "Off",
					"presentation" : 1,
					"id" : "obj-68",
					"parameter_enable" : 1,
					"texton" : "On",
					"numinlets" : 1,
					"presentation_rect" : [ 150.0, 630.0, 24.0, 16.0 ],
					"automation" : "Off",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "EZThreshOnOff",
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
					"text" : "mute~",
					"numoutlets" : 1,
					"patching_rect" : [ 2836.0, 528.0, 40.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-72",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p I2O",
					"numoutlets" : 1,
					"patching_rect" : [ 1665.0, 480.0, 36.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-91",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"maxclass" : "message",
									"text" : "0",
									"numoutlets" : 1,
									"patching_rect" : [ 80.0, 127.0, 32.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 127.0, 29.5, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"numoutlets" : 3,
									"patching_rect" : [ 70.0, 100.0, 46.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-5",
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 70.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-84",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 203.0, 25.0, 25.0 ],
									"id" : "obj-85",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "AmplitudeOnOff",
					"numoutlets" : 2,
					"automationon" : "On",
					"patching_rect" : [ 1665.0, 420.0, 24.0, 16.0 ],
					"outlettype" : [ "", "" ],
					"text" : "Off",
					"presentation" : 1,
					"id" : "obj-93",
					"parameter_enable" : 1,
					"texton" : "On",
					"numinlets" : 1,
					"presentation_rect" : [ 150.0, 525.0, 24.0, 16.0 ],
					"automation" : "Off",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 2,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Active",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "AmplitudeOnOff",
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
					"text" : "mute~",
					"numoutlets" : 1,
					"patching_rect" : [ 1665.0, 510.0, 40.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-94",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p amplitude",
					"numoutlets" : 1,
					"patching_rect" : [ 1665.0, 645.0, 67.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-78",
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"numinlets" : 3,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 227.0, 214.0, 630.0, 428.0 ],
						"bglocked" : 0,
						"defrect" : [ 227.0, 214.0, 630.0, 428.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 322.0, 82.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 316.0, 277.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.dial",
									"varname" : "AmplitudeSmooth",
									"numoutlets" : 2,
									"patching_rect" : [ 316.0, 217.0, 44.0, 47.0 ],
									"outlettype" : [ "", "float" ],
									"presentation" : 1,
									"id" : "obj-27",
									"parameter_enable" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 160.0, 235.0, 44.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 1,
											"parameter_mmax" : 100.0,
											"parameter_mmin" : 0.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Smooth",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "AmplitudeSmooth",
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "slide 0. 0.",
									"numoutlets" : 1,
									"patching_rect" : [ 112.0, 358.0, 62.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "slide 0. 0.",
									"numoutlets" : 1,
									"patching_rect" : [ 263.0, 352.0, 62.0, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"patching_rect" : [ 121.0, 417.0, 59.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"presentation" : 1,
									"id" : "obj-20",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 30.0, 260.0, 59.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"patching_rect" : [ 305.0, 418.0, 59.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"presentation" : 1,
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 90.0, 260.0, 59.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0.",
									"numoutlets" : 3,
									"patching_rect" : [ 112.0, 388.0, 63.0, 20.0 ],
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0.",
									"numoutlets" : 3,
									"patching_rect" : [ 263.0, 382.0, 63.0, 20.0 ],
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /amplitude/2",
									"numoutlets" : 1,
									"patching_rect" : [ 290.0, 460.0, 123.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /amplitude/1",
									"numoutlets" : 1,
									"patching_rect" : [ 35.0, 459.0, 123.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 196.0, 528.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 145.0, 124.0, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 145.0, 80.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-17",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pass~",
									"numoutlets" : 1,
									"patching_rect" : [ 85.0, 124.0, 43.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 85.0, 79.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.gain~",
									"varname" : "OnsetGain[1]",
									"numoutlets" : 5,
									"interp" : 50.0,
									"clip_size" : 1,
									"patching_rect" : [ 114.0, 167.0, 40.0, 80.0 ],
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"presentation" : 1,
									"id" : "obj-13",
									"display_range" : [ -70.0, 32.0 ],
									"parameter_enable" : 1,
									"numinlets" : 2,
									"presentation_rect" : [ 45.0, 45.0, 77.0, 179.0 ],
									"relative" : 1,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_speedlim" : 1.0,
											"parameter_invisible" : 0,
											"parameter_steps" : 0,
											"parameter_annotation_name" : "",
											"parameter_exponent" : 1.0,
											"parameter_unitstyle" : 4,
											"parameter_mmax" : 70.0,
											"parameter_mmin" : -70.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_type" : 0,
											"parameter_initial_enable" : 1,
											"parameter_shortname" : "Gain",
											"parameter_modmax" : 127.0,
											"parameter_longname" : "OnsetGain[1]",
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
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"numoutlets" : 1,
									"patching_rect" : [ 178.0, 264.0, 29.0, 82.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-7",
									"interval" : 10,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"numoutlets" : 1,
									"patching_rect" : [ 114.0, 261.0, 29.0, 82.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-74",
									"interval" : 10,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [ 325.5, 353.5, 143.0, 353.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-23", 2 ],
									"hidden" : 0,
									"midpoints" : [ 325.5, 345.5, 164.5, 345.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 2 ],
									"hidden" : 0,
									"midpoints" : [ 325.5, 307.5, 315.5, 307.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [ 325.5, 307.5, 294.0, 307.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 299.5, 504.5, 205.5, 504.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 272.5, 421.5, 299.5, 421.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 44.5, 492.5, 205.5, 492.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 121.5, 419.5, 44.5, 419.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 1680.0, 690.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"presentation" : 1,
					"id" : "obj-84",
					"numinlets" : 1,
					"presentation_rect" : [ 180.0, 525.0, 17.862764, 17.862764 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"numoutlets" : 1,
					"logfreq" : 1,
					"border" : 0,
					"patching_rect" : [ 555.0, 270.0, 197.0, 80.0 ],
					"outlettype" : [ "" ],
					"presentation" : 1,
					"id" : "obj-87",
					"domain" : [ 20.0, 20000.0 ],
					"rounded" : 1,
					"ignoreclick" : 1,
					"bgcolor" : [ 0.666667, 0.698039, 0.717647, 0.0 ],
					"numinlets" : 2,
					"presentation_rect" : [ 15.0, 45.0, 240.0, 80.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "filtergraph~",
					"prototypename" : "M4L.green",
					"numoutlets" : 7,
					"bordercolor" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"patching_rect" : [ 628.0, 147.0, 200.0, 80.0 ],
					"curvecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"numdisplay" : 0,
					"presentation" : 1,
					"id" : "obj-82",
					"hcurvecolor" : [ 0.984314, 0.819608, 0.05098, 1.0 ],
					"fgcolor" : [ 0.101961, 0.121569, 0.172549, 0.713726 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bwidthcolor" : [ 0.415686, 0.454902, 0.52549, 1.0 ],
					"hbwidthcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"range" : [ 0.038, 30.0 ],
					"markercolor" : [ 0.301961, 0.337255, 0.403922, 1.0 ],
					"fontsize" : 7.0,
					"bgcolor" : [ 0.101961, 0.121569, 0.172549, 0.137255 ],
					"numinlets" : 8,
					"presentation_rect" : [ 15.0, 45.0, 240.0, 80.0 ],
					"nfilters" : 1,
					"setfilter" : [ 0, 5, 1, 0, 0, 100.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"patching_rect" : [ 409.0, 1104.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-106",
					"rounded" : 30,
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 9.0, 488.0, 130.0, 96.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"patching_rect" : [ 543.0, 1104.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-109",
					"rounded" : 30,
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 143.0, 488.0, 130.0, 96.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"patching_rect" : [ 821.0, 903.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-105",
					"rounded" : 30,
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 143.0, 403.0, 130.0, 81.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"patching_rect" : [ 680.0, 916.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-103",
					"rounded" : 30,
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 9.0, 403.0, 130.0, 81.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"patching_rect" : [ 543.0, 956.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-102",
					"rounded" : 30,
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 143.0, 339.0, 130.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"patching_rect" : [ 409.0, 955.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-100",
					"rounded" : 30,
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 9.0, 339.0, 130.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"patching_rect" : [ 850.0, 976.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-99",
					"rounded" : 30,
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 9.0, 263.0, 261.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"patching_rect" : [ 139.0, 578.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-124",
					"rounded" : 30,
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 143.0, 585.0, 130.0, 96.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"mode" : 1,
					"grad1" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"bordercolor" : [ 0.501961, 0.717647, 0.764706, 1.0 ],
					"patching_rect" : [ 15.0, 750.0, 88.0, 75.0 ],
					"grad2" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"presentation" : 1,
					"id" : "obj-12",
					"rounded" : 48,
					"bgcolor" : [ 0.501961, 0.717647, 0.764706, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 276.0, 687.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-186", 0 ],
					"destination" : [ "obj-173", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-174", 0 ],
					"destination" : [ "obj-186", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-172", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-172", 0 ],
					"destination" : [ "obj-174", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-172", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1975.5, 735.0, 1224.5, 735.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-172", 0 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1975.5, 711.0, 2110.5, 711.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-182", 0 ],
					"destination" : [ "obj-172", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 0 ],
					"destination" : [ "obj-182", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-141", 0 ],
					"destination" : [ "obj-150", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-148", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-141", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-141", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-141", 1 ],
					"hidden" : 0,
					"midpoints" : [ 1421.5, 822.0, 1376.5, 822.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-138", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-110", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 0 ],
					"destination" : [ "obj-125", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-125", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [ 2248.5, 981.0, 1224.5, 981.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-90", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-219", 0 ],
					"destination" : [ "obj-90", 2 ],
					"hidden" : 0,
					"midpoints" : [ 2094.5, 498.0, 2070.0, 498.0, 2070.0, 600.0, 2030.5, 600.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-167", 0 ],
					"destination" : [ "obj-90", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-142", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-89", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 942.0, 114.5, 942.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 564.5, 900.0, 39.5, 900.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-44", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 1 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 384.5, 900.0, 39.5, 900.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 900.0, 39.5, 900.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 900.0, 39.5, 900.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-184", 5 ],
					"hidden" : 0,
					"midpoints" : [ 354.5, 630.0, 190.5, 630.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-184", 4 ],
					"hidden" : 0,
					"midpoints" : [ 279.5, 630.0, 175.300003, 630.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-184", 3 ],
					"hidden" : 0,
					"midpoints" : [ 234.5, 627.0, 160.100006, 627.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-176", 0 ],
					"destination" : [ "obj-184", 2 ],
					"hidden" : 0,
					"midpoints" : [ 132.5, 570.0, 168.0, 570.0, 168.0, 609.0, 144.899994, 609.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-151", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [ 2469.5, 735.0, 1224.5, 735.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [ 2845.5, 735.0, 1224.5, 735.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1674.5, 735.0, 1224.5, 735.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 1 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1406.5, 681.0, 1224.5, 681.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-199", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [ 902.5, 677.0, 1224.5, 677.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-206", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [ 564.5, 677.0, 1224.5, 677.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-184", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 677.0, 1224.5, 677.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-184", 0 ],
					"destination" : [ "obj-185", 0 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 690.0, 114.5, 690.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-180", 0 ],
					"destination" : [ "obj-184", 0 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 529.5, 114.5, 529.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-178", 0 ],
					"destination" : [ "obj-180", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-177", 0 ],
					"destination" : [ "obj-184", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-169", 0 ],
					"destination" : [ "obj-151", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-163", 0 ],
					"destination" : [ "obj-92", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-160", 0 ],
					"destination" : [ "obj-78", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-147", 0 ],
					"destination" : [ "obj-151", 0 ],
					"hidden" : 0,
					"midpoints" : [ 2469.5, 581.5, 2469.5, 581.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-145", 0 ],
					"destination" : [ "obj-147", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-151", 0 ],
					"destination" : [ "obj-144", 0 ],
					"hidden" : 0,
					"midpoints" : [ 2469.5, 660.0, 2484.5, 660.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 0 ],
					"destination" : [ "obj-142", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-108", 0 ],
					"destination" : [ "obj-101", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-107", 0 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 2845.5, 633.0, 2860.5, 633.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1674.5, 626.5, 1674.5, 626.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1674.5, 675.0, 1689.5, 675.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-50", 2 ],
					"hidden" : 0,
					"midpoints" : [ 1314.5, 507.0, 1356.0, 507.0, 1356.0, 600.0, 1383.0, 600.0, 1383.0, 642.0, 1360.5, 642.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-143", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1406.5, 667.0, 1398.5, 667.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-143", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-50", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-200", 0 ],
					"destination" : [ "obj-199", 2 ],
					"hidden" : 0,
					"midpoints" : [ 894.5, 522.0, 927.0, 522.0, 927.0, 585.0, 963.0, 585.0, 963.0, 633.0, 943.0, 633.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-202", 0 ],
					"destination" : [ "obj-199", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-199", 0 ],
					"destination" : [ "obj-196", 0 ],
					"hidden" : 0,
					"midpoints" : [ 902.5, 656.0, 902.5, 656.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-200", 0 ],
					"destination" : [ "obj-202", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-194", 0 ],
					"destination" : [ "obj-199", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-153", 0 ],
					"destination" : [ "obj-206", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-207", 0 ],
					"destination" : [ "obj-209", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-206", 0 ],
					"destination" : [ "obj-203", 0 ],
					"hidden" : 0,
					"midpoints" : [ 564.5, 648.0, 564.5, 648.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-209", 0 ],
					"destination" : [ "obj-206", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-207", 0 ],
					"destination" : [ "obj-206", 2 ],
					"hidden" : 0,
					"midpoints" : [ 564.5, 522.0, 597.0, 522.0, 597.0, 585.0, 642.0, 585.0, 642.0, 600.0, 632.5, 600.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-201", 0 ],
					"destination" : [ "obj-212", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-212", 0 ],
					"destination" : [ "obj-200", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-208", 0 ],
					"destination" : [ "obj-213", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-213", 0 ],
					"destination" : [ "obj-207", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-214", 0 ],
					"destination" : [ "obj-178", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-179", 0 ],
					"destination" : [ "obj-214", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-215", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-215", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-216", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-216", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-219", 0 ],
					"destination" : [ "obj-136", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-137", 0 ],
					"destination" : [ "obj-219", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-220", 0 ],
					"destination" : [ "obj-151", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-220", 0 ],
					"destination" : [ "obj-145", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-220", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-184", 0 ],
					"hidden" : 0,
					"midpoints" : [ 9.5, 600.0, 114.5, 600.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-177", 1 ],
					"hidden" : 0,
					"midpoints" : [ 204.5, 570.0, 147.5, 570.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-176", 0 ],
					"destination" : [ "obj-177", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-206", 0 ],
					"hidden" : 0,
					"midpoints" : [ 459.5, 615.0, 564.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-152", 0 ],
					"destination" : [ "obj-206", 4 ],
					"hidden" : 0,
					"midpoints" : [ 609.5, 585.0, 642.0, 585.0, 642.0, 600.0, 700.5, 600.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-152", 0 ],
					"destination" : [ "obj-153", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-153", 1 ],
					"hidden" : 0,
					"midpoints" : [ 654.5, 591.0, 630.0, 591.0, 630.0, 597.0, 627.5, 597.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-206", 3 ],
					"hidden" : 0,
					"midpoints" : [ 684.5, 558.0, 642.0, 558.0, 642.0, 600.0, 666.5, 600.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-199", 0 ],
					"hidden" : 0,
					"midpoints" : [ 804.5, 624.0, 902.5, 624.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-194", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-199", 3 ],
					"hidden" : 0,
					"midpoints" : [ 999.5, 633.0, 963.25, 633.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1224.5, 630.0, 1314.5, 630.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 1404.5, 600.0, 1362.5, 600.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-193", 0 ],
					"destination" : [ "obj-199", 4 ],
					"hidden" : 0,
					"midpoints" : [ 939.5, 585.0, 963.0, 585.0, 963.0, 633.0, 983.5, 633.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-193", 0 ],
					"destination" : [ "obj-194", 0 ],
					"hidden" : 0,
					"midpoints" : [ 939.5, 585.0, 924.5, 585.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-50", 3 ],
					"hidden" : 0,
					"midpoints" : [ 1374.5, 600.0, 1383.5, 600.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1374.5, 600.0, 1344.5, 600.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-159", 0 ],
					"destination" : [ "obj-160", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-160", 1 ],
					"hidden" : 0,
					"midpoints" : [ 1764.5, 600.0, 1722.5, 600.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-78", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-92", 0 ],
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
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-163", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-167", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-166", 0 ],
					"destination" : [ "obj-167", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-168", 0 ],
					"destination" : [ "obj-151", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-168", 0 ],
					"destination" : [ "obj-169", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-151", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-169", 1 ],
					"hidden" : 0,
					"midpoints" : [ 2589.5, 555.0, 2547.5, 555.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-151", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"color" : [ 0.568627, 0.619608, 0.662745, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"color" : [ 0.415686, 0.454902, 0.52549, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 1,
					"color" : [ 0.568627, 0.619608, 0.662745, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 1,
					"color" : [ 0.568627, 0.619608, 0.662745, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 1,
					"color" : [ 0.568627, 0.619608, 0.662745, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-62", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-62", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-62", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-86", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-83", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-88", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-116", 0 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-117", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 0 ],
					"destination" : [ "obj-115", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-115", 0 ],
					"destination" : [ "obj-120", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 0 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-122", 0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 0 ],
					"destination" : [ "obj-110", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-115", 0 ],
					"destination" : [ "obj-110", 2 ],
					"hidden" : 0,
					"midpoints" : [ 2368.5, 807.0, 2344.0, 807.0, 2344.0, 909.0, 2361.166748, 909.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [ 2248.5, 969.0, 2383.5, 969.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 0 ],
					"destination" : [ "obj-92", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-92", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-139", 0 ],
					"destination" : [ "obj-92", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-140", 0 ],
					"destination" : [ "obj-139", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-149", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 1 ],
					"destination" : [ "obj-156", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-161", 0 ],
					"destination" : [ "obj-158", 0 ],
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
					"source" : [ "obj-158", 0 ],
					"destination" : [ "obj-170", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-164", 0 ],
					"destination" : [ "obj-171", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-170", 0 ],
					"destination" : [ "obj-164", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-158", 0 ],
					"destination" : [ "obj-164", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-156", 0 ],
					"destination" : [ "obj-164", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ],
		"parameters" : 		{
			"obj-50::obj-33" : [ "melscalebands", "Num Bands", 0 ],
			"obj-90::obj-49" : [ "live.text[4]", "live.text", 0 ],
			"obj-137" : [ "FFT_OnOff", "Active", 0 ],
			"obj-90::obj-43" : [ "live.text[5]", "live.text", 0 ],
			"obj-199::obj-31" : [ "FiddleSmooth[1]", "Smooth", 0 ],
			"obj-81" : [ "Q[1]", "Q", 0 ],
			"obj-131::obj-13" : [ "OnsetGain[15]", "Gain", 0 ],
			"obj-50::obj-13" : [ "OnsetGain[9]", "Gain", 0 ],
			"obj-26" : [ "centroid_smooth", "Smooth", 0 ],
			"obj-131::obj-8" : [ "ezbeatThreshLow[2]", "threshLow", 0 ],
			"obj-23" : [ "pitch_low_thresh", "LowThresh", 0 ],
			"obj-131::obj-66" : [ "ezbeatmetering[2]", "Metering Interval", 0 ],
			"obj-184::obj-11" : [ "FiddleLowThresh", "LowThresh", 0 ],
			"obj-121" : [ "FFT_OnOff[1]", "Active", 0 ],
			"obj-151::obj-41" : [ "BufferSize", "BufferSize", 0 ],
			"obj-85" : [ "Mel_OnOff", "Active", 0 ],
			"obj-146" : [ "SnapshotOnOff[1]", "Active", 0 ],
			"obj-151::obj-13" : [ "OnsetGain[7]", "Gain", 0 ],
			"obj-27" : [ "pitch_smooth", "Smooth", 0 ],
			"obj-184::obj-27" : [ "FiddleSmooth", "Smooth", 0 ],
			"obj-184::obj-13" : [ "OnsetGain[8]", "Gain", 0 ],
			"obj-92::obj-13" : [ "OnsetGain[3]", "Gain", 0 ],
			"obj-184::obj-16" : [ "FiddleHighThresh", "HighThresh", 0 ],
			"obj-131::obj-22" : [ "ezbeatthreshHigh[2]", "threshHigh", 0 ],
			"obj-206::obj-31" : [ "FiddleSmooth[2]", "Smooth", 0 ],
			"obj-206::obj-13" : [ "OnsetGain[12]", "Gain", 0 ],
			"obj-77" : [ "Active[1]", "Active", 0 ],
			"obj-78::obj-27" : [ "AmplitudeSmooth", "Smooth", 0 ],
			"obj-133" : [ "Octaves", "Octaves", 0 ],
			"obj-76" : [ "Type[1]", "Type", 0 ],
			"obj-199::obj-13" : [ "OnsetGain[11]", "Gain", 0 ],
			"obj-51" : [ "melscalebands[1]", "Num Bands", 0 ],
			"obj-90::obj-13" : [ "OnsetGain[13]", "Gain", 0 ],
			"obj-41" : [ "snapshot_buffersize", "BufferSize", 0 ],
			"obj-110::obj-13" : [ "OnsetGain[14]", "Gain", 0 ],
			"obj-93" : [ "AmplitudeOnOff", "Active", 0 ],
			"obj-80" : [ "Freq[1]", "Freq", 0 ],
			"obj-134" : [ "OnsetSensitivity", "Sensitivity", 0 ],
			"obj-55" : [ "amplitude_smooth", "Smooth", 0 ],
			"obj-78::obj-13" : [ "OnsetGain[1]", "Gain", 0 ],
			"obj-179" : [ "pitch_OnOff", "Active", 0 ],
			"obj-201" : [ "spread_OnOff", "Active", 0 ],
			"obj-90::obj-55" : [ "live.text[3]", "live.text", 0 ],
			"obj-68" : [ "EZThreshOnOff", "Active", 0 ],
			"obj-79" : [ "Gain[1]", "Gain", 0 ],
			"obj-60" : [ "OnsetSensitivity[1]", "Min Interval", 0 ],
			"obj-208" : [ "centroid_OnOff", "Active", 0 ],
			"obj-22" : [ "pitch_high_thresh", "HighThresh", 0 ],
			"obj-32" : [ "spread_smooth", "Smooth", 0 ]
		}

	}

}
