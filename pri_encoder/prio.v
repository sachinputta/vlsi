module pri256(d_out,din);
input [255:0]din;
output [255:0]d_out;
wire [255:0]w;
wire [63:0]x1;
wire [15:0]x2;
wire [3:0]x3;
wire [15:0]a21;
wire [63:0]a11;
wire [255:0]a01;
wire [63:0]v;
wire [15:0]m1;
wire [3:0]m2;
wire m4;
wire [63:0]z1;
wire [16:0]z2;
wire [3:0]z3;
wire [3:0]e1;
wire [3:0]e2;




//64 chunks each of 4 bit

pri_enc p1	(w[	3	:	0	],din[	3	:	0	],v[	0	]);
pri_enc p2	(w[	7	:	4	],din[	7	:	4	],v[	1	]);
pri_enc p3	(w[	11	:	8	],din[	11	:	8	],v[	2	]);
pri_enc p4	(w[	15	:	12	],din[	15	:	12	],v[	3	]);
pri_enc p5	(w[	19	:	16	],din[	19	:	16	],v[	4	]);
pri_enc p6	(w[	23	:	20	],din[	23	:	20	],v[	5	]);
pri_enc p7	(w[	27	:	24	],din[	27	:	24	],v[	6	]);
pri_enc p8	(w[	31	:	28	],din[	31	:	28	],v[	7	]);
pri_enc p9	(w[	35	:	32	],din[	35	:	32	],v[	8	]);
pri_enc p10	(w[	39	:	36	],din[	39	:	36	],v[	9	]);
pri_enc p11	(w[	43	:	40	],din[	43	:	40	],v[	10	]);
pri_enc p12	(w[	47	:	44	],din[	47	:	44	],v[	11	]);
pri_enc p13	(w[	51	:	48	],din[	51	:	48	],v[	12	]);
pri_enc p14	(w[	55	:	52	],din[	55	:	52	],v[	13	]);
pri_enc p15	(w[	59	:	56	],din[	59	:	56	],v[	14	]);
pri_enc p16	(w[	63	:	60	],din[	63	:	60	],v[	15	]);
pri_enc p17	(w[	67	:	64	],din[	67	:	64	],v[	16	]);
pri_enc p18	(w[	71	:	68	],din[	71	:	68	],v[	17	]);
pri_enc p19	(w[	75	:	72	],din[	75	:	72	],v[	18	]);
pri_enc p20	(w[	79	:	76	],din[	79	:	76	],v[	19	]);
pri_enc p21	(w[	83	:	80	],din[	83	:	80	],v[	20	]);
pri_enc p22	(w[	87	:	84	],din[	87	:	84	],v[	21	]);
pri_enc p23	(w[	91	:	88	],din[	91	:	88	],v[	22	]);
pri_enc p24	(w[	95	:	92	],din[	95	:	92	],v[	23	]);
pri_enc p25	(w[	99	:	96	],din[	99	:	96	],v[	24	]);
pri_enc p26	(w[	103	:	100	],din[	103	:	100	],v[	25	]);
pri_enc p27	(w[	107	:	104	],din[	107	:	104	],v[	26	]);
pri_enc p28	(w[	111	:	108	],din[	111	:	108	],v[	27	]);
pri_enc p29	(w[	115	:	112	],din[	115	:	112	],v[	28	]);
pri_enc p30	(w[	119	:	116	],din[	119	:	116	],v[	29	]);
pri_enc p31	(w[	123	:	120	],din[	123	:	120	],v[	30	]);
pri_enc p32	(w[	127	:	124	],din[	127	:	124	],v[	31	]);
pri_enc p33	(w[	131	:	128	],din[	131	:	128	],v[	32	]);
pri_enc p34	(w[	135	:	132	],din[	135	:	132	],v[	33	]);
pri_enc p35	(w[	139	:	136	],din[	139	:	136	],v[	34	]);
pri_enc p36	(w[	143	:	140	],din[	143	:	140	],v[	35	]);
pri_enc p37	(w[	147	:	144	],din[	147	:	144	],v[	36	]);
pri_enc p38	(w[	151	:	148	],din[	151	:	148	],v[	37	]);
pri_enc p39	(w[	155	:	152	],din[	155	:	152	],v[	38	]);
pri_enc p40	(w[	159	:	156	],din[	159	:	156	],v[	39	]);
pri_enc p41	(w[	163	:	160	],din[	163	:	160	],v[	40	]);
pri_enc p42	(w[	167	:	164	],din[	167	:	164	],v[	41	]);
pri_enc p43	(w[	171	:	168	],din[	171	:	168	],v[	42	]);
pri_enc p44	(w[	175	:	172	],din[	175	:	172	],v[	43	]);
pri_enc p45	(w[	179	:	176	],din[	179	:	176	],v[	44	]);
pri_enc p46	(w[	183	:	180	],din[	183	:	180	],v[	45	]);
pri_enc p47	(w[	187	:	184	],din[	187	:	184	],v[	46	]);
pri_enc p48	(w[	191	:	188	],din[	191	:	188	],v[	47	]);
pri_enc p49	(w[	195	:	192	],din[	195	:	192	],v[	48	]);
pri_enc p50	(w[	199	:	196	],din[	199	:	196	],v[	49	]);
pri_enc p51	(w[	203	:	200	],din[	203	:	200	],v[	50	]);
pri_enc p52	(w[	207	:	204	],din[	207	:	204	],v[	51	]);
pri_enc p53	(w[	211	:	208	],din[	211	:	208	],v[	52	]);
pri_enc p54	(w[	215	:	212	],din[	215	:	212	],v[	53	]);
pri_enc p55	(w[	219	:	216	],din[	219	:	216	],v[	54	]);
pri_enc p56	(w[	223	:	220	],din[	223	:	220	],v[	55	]);
pri_enc p57	(w[	227	:	224	],din[	227	:	224	],v[	56	]);
pri_enc p58	(w[	231	:	228	],din[	231	:	228	],v[	57	]);
pri_enc p59	(w[	235	:	232	],din[	235	:	232	],v[	58	]);
pri_enc p60	(w[	239	:	236	],din[	239	:	236	],v[	59	]);
pri_enc p61	(w[	243	:	240	],din[	243	:	240	],v[	60	]);
pri_enc p62	(w[	247	:	244	],din[	247	:	244	],v[	61	]);
pri_enc p63	(w[	251	:	248	],din[	251	:	248	],v[	62	]);
pri_enc p64	(w[	255	:	252	],din[	255	:	252	],v[	63	]);


//or of output of pri_enc 64 bit
assign	z1[	0	]=w[	0	]| w[	1	] | w[	2	] | w[	3	];
assign	z1[	1	]=w[	4	]| w[	5	] | w[	6	] | w[	7	];
assign	z1[	2	]=w[	8	]| w[	9	] | w[	10	] | w[	11	];
assign	z1[	3	]=w[	12	]| w[	13	] | w[	14	] | w[	15	];
assign	z1[	4	]=w[	16	]| w[	17	] | w[	18	] | w[	19	];
assign	z1[	5	]=w[	20	]| w[	21	] | w[	22	] | w[	23	];
assign	z1[	6	]=w[	24	]| w[	25	] | w[	26	] | w[	27	];
assign	z1[	7	]=w[	28	]| w[	29	] | w[	30	] | w[	31	];
assign	z1[	8	]=w[	32	]| w[	33	] | w[	34	] | w[	35	];
assign	z1[	9	]=w[	36	]| w[	37	] | w[	38	] | w[	39	];
assign	z1[	10	]=w[	40	]| w[	41	] | w[	42	] | w[	43	];
assign	z1[	11	]=w[	44	]| w[	45	] | w[	46	] | w[	47	];
assign	z1[	12	]=w[	48	]| w[	49	] | w[	50	] | w[	51	];
assign	z1[	13	]=w[	52	]| w[	53	] | w[	54	] | w[	55	];
assign	z1[	14	]=w[	56	]| w[	57	] | w[	58	] | w[	59	];
assign	z1[	15	]=w[	60	]| w[	61	] | w[	62	] | w[	63	];
assign	z1[	16	]=w[	64	]| w[	65	] | w[	66	] | w[	67	];
assign	z1[	17	]=w[	68	]| w[	69	] | w[	70	] | w[	71	];
assign	z1[	18	]=w[	72	]| w[	73	] | w[	74	] | w[	75	];
assign	z1[	19	]=w[	76	]| w[	77	] | w[	78	] | w[	79	];
assign	z1[	20	]=w[	80	]| w[	81	] | w[	82	] | w[	83	];
assign	z1[	21	]=w[	84	]| w[	85	] | w[	86	] | w[	87	];
assign	z1[	22	]=w[	88	]| w[	89	] | w[	90	] | w[	91	];
assign	z1[	23	]=w[	92	]| w[	93	] | w[	94	] | w[	95	];
assign	z1[	24	]=w[	96	]| w[	97	] | w[	98	] | w[	99	];
assign	z1[	25	]=w[	100	]| w[	101	] | w[	102	] | w[	103	];
assign	z1[	26	]=w[	104	]| w[	105	] | w[	106	] | w[	107	];
assign	z1[	27	]=w[	108	]| w[	109	] | w[	110	] | w[	111	];
assign	z1[	28	]=w[	112	]| w[	113	] | w[	114	] | w[	115	];
assign	z1[	29	]=w[	116	]| w[	117	] | w[	118	] | w[	119	];
assign	z1[	30	]=w[	120	]| w[	121	] | w[	122	] | w[	123	];
assign	z1[	31	]=w[	124	]| w[	125	] | w[	126	] | w[	127	];
assign	z1[	32	]=w[	128	]| w[	129	] | w[	130	] | w[	131	];
assign	z1[	33	]=w[	132	]| w[	133	] | w[	134	] | w[	135	];
assign	z1[	34	]=w[	136	]| w[	137	] | w[	138	] | w[	139	];
assign	z1[	35	]=w[	140	]| w[	141	] | w[	142	] | w[	143	];
assign	z1[	36	]=w[	144	]| w[	145	] | w[	146	] | w[	147	];
assign	z1[	37	]=w[	148	]| w[	149	] | w[	150	] | w[	151	];
assign	z1[	38	]=w[	152	]| w[	153	] | w[	154	] | w[	155	];
assign	z1[	39	]=w[	156	]| w[	157	] | w[	158	] | w[	159	];
assign	z1[	40	]=w[	160	]| w[	161	] | w[	162	] | w[	163	];
assign	z1[	41	]=w[	164	]| w[	165	] | w[	166	] | w[	167	];
assign	z1[	42	]=w[	168	]| w[	169	] | w[	170	] | w[	171	];
assign	z1[	43	]=w[	172	]| w[	173	] | w[	174	] | w[	175	];
assign	z1[	44	]=w[	176	]| w[	177	] | w[	178	] | w[	179	];
assign	z1[	45	]=w[	180	]| w[	181	] | w[	182	] | w[	183	];
assign	z1[	46	]=w[	184	]| w[	185	] | w[	186	] | w[	187	];
assign	z1[	47	]=w[	188	]| w[	189	] | w[	190	] | w[	191	];
assign	z1[	48	]=w[	192	]| w[	193	] | w[	194	] | w[	195	];
assign	z1[	49	]=w[	196	]| w[	197	] | w[	198	] | w[	199	];
assign	z1[	50	]=w[	200	]| w[	201	] | w[	202	] | w[	203	];
assign	z1[	51	]=w[	204	]| w[	205	] | w[	206	] | w[	207	];
assign	z1[	52	]=w[	208	]| w[	209	] | w[	210	] | w[	211	];
assign	z1[	53	]=w[	212	]| w[	213	] | w[	214	] | w[	215	];
assign	z1[	54	]=w[	216	]| w[	217	] | w[	218	] | w[	219	];
assign	z1[	55	]=w[	220	]| w[	221	] | w[	222	] | w[	223	];
assign	z1[	56	]=w[	224	]| w[	225	] | w[	226	] | w[	227	];
assign	z1[	57	]=w[	228	]| w[	229	] | w[	230	] | w[	231	];
assign	z1[	58	]=w[	232	]| w[	233	] | w[	234	] | w[	235	];
assign	z1[	59	]=w[	236	]| w[	237	] | w[	238	] | w[	239	];
assign	z1[	60	]=w[	240	]| w[	241	] | w[	242	] | w[	243	];
assign	z1[	61	]=w[	244	]| w[	245	] | w[	246	] | w[	247	];
assign	z1[	62	]=w[	248	]| w[	249	] | w[	250	] | w[	251	];
assign	z1[	63	]=w[	252	]| w[	253	] | w[	254	] | w[	255	];

//16 chunks of 4bit each

pri_enc q1	(x1[	3	:	0	],z1[	3	:	0	],m1[	0	]);
pri_enc q2	(x1[	7	:	4	],z1[	7	:	4	],m1[	1	]);
pri_enc q3	(x1[	11	:	8	],z1[	11	:	8	],m1[	2	]);
pri_enc q4	(x1[	15	:	12	],z1[	15	:	12	],m1[	3	]);
pri_enc q5	(x1[	19	:	16	],z1[	19	:	16	],m1[	4	]);
pri_enc q6	(x1[	23	:	20	],z1[	23	:	20	],m1[	5	]);
pri_enc q7	(x1[	27	:	24	],z1[	27	:	24	],m1[	6	]);
pri_enc q8	(x1[	31	:	28	],z1[	31	:	28	],m1[	7	]);
pri_enc q9	(x1[	35	:	32	],z1[	35	:	32	],m1[	8	]);
pri_enc q10	(x1[	39	:	36	],z1[	39	:	36	],m1[	9	]);
pri_enc q11	(x1[	43	:	40	],z1[	43	:	40	],m1[	10	]);
pri_enc q12	(x1[	47	:	44	],z1[	47	:	44	],m1[	11	]);
pri_enc q13	(x1[	51	:	48	],z1[	51	:	48	],m1[	12	]);
pri_enc q14	(x1[	55	:	52	],z1[	55	:	52	],m1[	13	]);
pri_enc q15	(x1[	59	:	56	],z1[	59	:	56	],m1[	14	]);
pri_enc q16	(x1[	63	:	60	],z1[	63	:	60	],m1[	15	]);

//or of output-16bit
assign	z2[	0	]=x1[	0	]| x1[	1	] | x1[	2	] | x1[	3	];
assign	z2[	1	]=x1[	4	]| x1[	5	] | x1[	6	] | x1[	7	];
assign	z2[	2	]=x1[	8	]| x1[	9	] | x1[	10	] | x1[	11	];
assign	z2[	3	]=x1[	12	]| x1[	13	] | x1[	14	] | x1[	15	];
assign	z2[	4	]=x1[	16	]| x1[	17	] | x1[	18	] | x1[	19	];
assign	z2[	5	]=x1[	20	]| x1[	21	] | x1[	22	] | x1[	23	];
assign	z2[	6	]=x1[	24	]| x1[	25	] | x1[	26	] | x1[	27	];
assign	z2[	7	]=x1[	28	]| x1[	29	] | x1[	30	] | x1[	31	];
assign	z2[	8	]=x1[	32	]| x1[	33	] | x1[	34	] | x1[	35	];
assign	z2[	9	]=x1[	36	]| x1[	37	] | x1[	38	] | x1[	39	];
assign	z2[	10	]=x1[	40	]| x1[	41	] | x1[	42	] | x1[	43	];
assign	z2[	11	]=x1[	44	]| x1[	45	] | x1[	46	] | x1[	47	];
assign	z2[	12	]=x1[	48	]| x1[	49	] | x1[	50	] | x1[	51	];
assign	z2[	13	]=x1[	52	]| x1[	53	] | x1[	54	] | x1[	55	];
assign	z2[	14	]=x1[	56	]| x1[	57	] | x1[	58	] | x1[	59	];
assign	z2[	15	]=x1[	60	]| x1[	61	] | x1[	62	] | x1[	63	];

//4 chunks of each 4 bit
pri_enc	qx1	(x2[	3	:	0	],z2[	3	:	0	],m2[	0	]);
pri_enc	qx2	(x2[	7	:	4	],z2[	7	:	4	],m2[	1	]);
pri_enc	qx3	(x2[	11	:	8	],z2[	11	:	8	],m2[	2	]);
pri_enc	qw4	(x2[	15	:	12	],z2[	15	:	12	],m2[	3	]);

//or of output-4bit
assign	z3[	0	]=x2[	0	]| x2[	1	] | x2[	2	] | x2[	3	];
assign	z3[	1	]=x2[	4	]| x2[	5	] | x2[	6	] | x2[	7	];
assign	z3[	2	]=x2[	8	]| x2[	9	] | x2[	10	] | x2[	11	];
assign	z3[	3	]=x2[	12	]| x2[	13	] | x2[	14	] | x2[	15	];

//1 chunk of 4 bit
pri_enc wq(x3[3:0],z3[3:0],m4);


//backtracking of 4bit to 16 bit
assign	a21[	0	]=x3[0] &	x2[	0	];
assign	a21[	1	]=x3[0] &	x2[	1	];
assign	a21[	2	]=x3[0] &	x2[	2	];
assign	a21[	3	]=x3[0] &	x2[	3	];
assign	a21[	4	]=x3[1] &	x2[	4	];
assign	a21[	5	]=x3[1] &	x2[	5	];
assign	a21[	6	]=x3[1] &	x2[	6	];
assign	a21[	7	]=x3[1] &	x2[	7	];
assign	a21[	8	]=x3[2] &	x2[	8	];
assign	a21[	9	]=x3[2] &	x2[	9	];
assign	a21[	10	]=x3[2] &	x2[	10	];
assign	a21[	11	]=x3[2] &	x2[	11	];
assign	a21[	12	]=x3[3] &	x2[	12	];
assign	a21[	13	]=x3[3] &	x2[	13	];
assign	a21[	14	]=x3[3] &	x2[	14	];
assign	a21[	15	]=x3[3] &	x2[	15	];



assign	a11[	0	]=a21[	0	]&x1[	0	];
assign	a11[	1	]=a21[	0	]&x1[	1	];
assign	a11[	2	]=a21[	0	]&x1[	2	];
assign	a11[	3	]=a21[	0	]&x1[	3	];
assign	a11[	4	]=a21[	1	]&x1[	4	];
assign	a11[	5	]=a21[	1	]&x1[	5	];
assign	a11[	6	]=a21[	1	]&x1[	6	];
assign	a11[	7	]=a21[	1	]&x1[	7	];
assign	a11[	8	]=a21[	2	]&x1[	8	];
assign	a11[	9	]=a21[	2	]&x1[	9	];
assign	a11[	10	]=a21[	2	]&x1[	10	];
assign	a11[	11	]=a21[	2	]&x1[	11	];
assign	a11[	12	]=a21[	3	]&x1[	12	];
assign	a11[	13	]=a21[	3	]&x1[	13	];
assign	a11[	14	]=a21[	3	]&x1[	14	];
assign	a11[	15	]=a21[	3	]&x1[	15	];
assign	a11[	16	]=a21[	4	]&x1[	16	];
assign	a11[	17	]=a21[	4	]&x1[	17	];
assign	a11[	18	]=a21[	4	]&x1[	18	];
assign	a11[	19	]=a21[	4	]&x1[	19	];
assign	a11[	20	]=a21[	5	]&x1[	20	];
assign	a11[	21	]=a21[	5	]&x1[	21	];
assign	a11[	22	]=a21[	5	]&x1[	22	];
assign	a11[	23	]=a21[	5	]&x1[	23	];
assign	a11[	24	]=a21[	6	]&x1[	24	];
assign	a11[	25	]=a21[	6	]&x1[	25	];
assign	a11[	26	]=a21[	6	]&x1[	26	];
assign	a11[	27	]=a21[	6	]&x1[	27	];
assign	a11[	28	]=a21[	7	]&x1[	28	];
assign	a11[	29	]=a21[	7	]&x1[	29	];
assign	a11[	30	]=a21[	7	]&x1[	30	];
assign	a11[	31	]=a21[	7	]&x1[	31	];
assign	a11[	32	]=a21[	8	]&x1[	32	];
assign	a11[	33	]=a21[	8	]&x1[	33	];
assign	a11[	34	]=a21[	8	]&x1[	34	];
assign	a11[	35	]=a21[	8	]&x1[	35	];
assign	a11[	36	]=a21[	9	]&x1[	36	];
assign	a11[	37	]=a21[	9	]&x1[	37	];
assign	a11[	38	]=a21[	9	]&x1[	38	];
assign	a11[	39	]=a21[	9	]&x1[	39	];
assign	a11[	40	]=a21[	10	]&x1[	40	];
assign	a11[	41	]=a21[	10	]&x1[	41	];
assign	a11[	42	]=a21[	10	]&x1[	42	];
assign	a11[	43	]=a21[	10	]&x1[	43	];
assign	a11[	44	]=a21[	11	]&x1[	44	];
assign	a11[	45	]=a21[	11	]&x1[	45	];
assign	a11[	46	]=a21[	11	]&x1[	46	];
assign	a11[	47	]=a21[	11	]&x1[	47	];
assign	a11[	48	]=a21[	12	]&x1[	48	];
assign	a11[	49	]=a21[	12	]&x1[	49	];
assign	a11[	50	]=a21[	12	]&x1[	50	];
assign	a11[	51	]=a21[	12	]&x1[	51	];
assign	a11[	52	]=a21[	13	]&x1[	52	];
assign	a11[	53	]=a21[	13	]&x1[	53	];
assign	a11[	54	]=a21[	13	]&x1[	54	];
assign	a11[	55	]=a21[	13	]&x1[	55	];
assign	a11[	56	]=a21[	14	]&x1[	56	];
assign	a11[	57	]=a21[	14	]&x1[	57	];
assign	a11[	58	]=a21[	14	]&x1[	58	];
assign	a11[	59	]=a21[	14	]&x1[	59	];
assign	a11[	60	]=a21[	15	]&x1[	60	];
assign	a11[	61	]=a21[	15	]&x1[	61	];
assign	a11[	62	]=a21[	15	]&x1[	62	];
assign	a11[	63	]=a21[	15	]&x1[	63	];

//backtracking 64bit to 256bit
assign	a01[	0	]=a11[	0	]&w[	0	];
assign	a01[	1	]=a11[	0	]&w[	1	];
assign	a01[	2	]=a11[	0	]&w[	2	];
assign	a01[	3	]=a11[	0	]&w[	3	];
assign	a01[	4	]=a11[	1	]&w[	4	];
assign	a01[	5	]=a11[	1	]&w[	5	];
assign	a01[	6	]=a11[	1	]&w[	6	];
assign	a01[	7	]=a11[	1	]&w[	7	];
assign	a01[	8	]=a11[	2	]&w[	8	];
assign	a01[	9	]=a11[	2	]&w[	9	];
assign	a01[	10	]=a11[	2	]&w[	10	];
assign	a01[	11	]=a11[	2	]&w[	11	];
assign	a01[	12	]=a11[	3	]&w[	12	];
assign	a01[	13	]=a11[	3	]&w[	13	];
assign	a01[	14	]=a11[	3	]&w[	14	];
assign	a01[	15	]=a11[	3	]&w[	15	];
assign	a01[	16	]=a11[	4	]&w[	16	];
assign	a01[	17	]=a11[	4	]&w[	17	];
assign	a01[	18	]=a11[	4	]&w[	18	];
assign	a01[	19	]=a11[	4	]&w[	19	];
assign	a01[	20	]=a11[	5	]&w[	20	];
assign	a01[	21	]=a11[	5	]&w[	21	];
assign	a01[	22	]=a11[	5	]&w[	22	];
assign	a01[	23	]=a11[	5	]&w[	23	];
assign	a01[	24	]=a11[	6	]&w[	24	];
assign	a01[	25	]=a11[	6	]&w[	25	];
assign	a01[	26	]=a11[	6	]&w[	26	];
assign	a01[	27	]=a11[	6	]&w[	27	];
assign	a01[	28	]=a11[	7	]&w[	28	];
assign	a01[	29	]=a11[	7	]&w[	29	];
assign	a01[	30	]=a11[	7	]&w[	30	];
assign	a01[	31	]=a11[	7	]&w[	31	];
assign	a01[	32	]=a11[	8	]&w[	32	];
assign	a01[	33	]=a11[	8	]&w[	33	];
assign	a01[	34	]=a11[	8	]&w[	34	];
assign	a01[	35	]=a11[	8	]&w[	35	];
assign	a01[	36	]=a11[	9	]&w[	36	];
assign	a01[	37	]=a11[	9	]&w[	37	];
assign	a01[	38	]=a11[	9	]&w[	38	];
assign	a01[	39	]=a11[	9	]&w[	39	];
assign	a01[	40	]=a11[	10	]&w[	40	];
assign	a01[	41	]=a11[	10	]&w[	41	];
assign	a01[	42	]=a11[	10	]&w[	42	];
assign	a01[	43	]=a11[	10	]&w[	43	];
assign	a01[	44	]=a11[	11	]&w[	44	];
assign	a01[	45	]=a11[	11	]&w[	45	];
assign	a01[	46	]=a11[	11	]&w[	46	];
assign	a01[	47	]=a11[	11	]&w[	47	];
assign	a01[	48	]=a11[	12	]&w[	48	];
assign	a01[	49	]=a11[	12	]&w[	49	];
assign	a01[	50	]=a11[	12	]&w[	50	];
assign	a01[	51	]=a11[	12	]&w[	51	];
assign	a01[	52	]=a11[	13	]&w[	52	];
assign	a01[	53	]=a11[	13	]&w[	53	];
assign	a01[	54	]=a11[	13	]&w[	54	];
assign	a01[	55	]=a11[	13	]&w[	55	];
assign	a01[	56	]=a11[	14	]&w[	56	];
assign	a01[	57	]=a11[	14	]&w[	57	];
assign	a01[	58	]=a11[	14	]&w[	58	];
assign	a01[	59	]=a11[	14	]&w[	59	];
assign	a01[	60	]=a11[	15	]&w[	60	];
assign	a01[	61	]=a11[	15	]&w[	61	];
assign	a01[	62	]=a11[	15	]&w[	62	];
assign	a01[	63	]=a11[	15	]&w[	63	];
assign	a01[	64	]=a11[	16	]&w[	64	];
assign	a01[	65	]=a11[	16	]&w[	65	];
assign	a01[	66	]=a11[	16	]&w[	66	];
assign	a01[	67	]=a11[	16	]&w[	67	];
assign	a01[	68	]=a11[	17	]&w[	68	];
assign	a01[	69	]=a11[	17	]&w[	69	];
assign	a01[	70	]=a11[	17	]&w[	70	];
assign	a01[	71	]=a11[	17	]&w[	71	];
assign	a01[	72	]=a11[	18	]&w[	72	];
assign	a01[	73	]=a11[	18	]&w[	73	];
assign	a01[	74	]=a11[	18	]&w[	74	];
assign	a01[	75	]=a11[	18	]&w[	75	];
assign	a01[	76	]=a11[	19	]&w[	76	];
assign	a01[	77	]=a11[	19	]&w[	77	];
assign	a01[	78	]=a11[	19	]&w[	78	];
assign	a01[	79	]=a11[	19	]&w[	79	];
assign	a01[	80	]=a11[	20	]&w[	80	];
assign	a01[	81	]=a11[	20	]&w[	81	];
assign	a01[	82	]=a11[	20	]&w[	82	];
assign	a01[	83	]=a11[	20	]&w[	83	];
assign	a01[	84	]=a11[	21	]&w[	84	];
assign	a01[	85	]=a11[	21	]&w[	85	];
assign	a01[	86	]=a11[	21	]&w[	86	];
assign	a01[	87	]=a11[	21	]&w[	87	];
assign	a01[	88	]=a11[	22	]&w[	88	];
assign	a01[	89	]=a11[	22	]&w[	89	];
assign	a01[	90	]=a11[	22	]&w[	90	];
assign	a01[	91	]=a11[	22	]&w[	91	];
assign	a01[	92	]=a11[	23	]&w[	92	];
assign	a01[	93	]=a11[	23	]&w[	93	];
assign	a01[	94	]=a11[	23	]&w[	94	];
assign	a01[	95	]=a11[	23	]&w[	95	];
assign	a01[	96	]=a11[	24	]&w[	96	];
assign	a01[	97	]=a11[	24	]&w[	97	];
assign	a01[	98	]=a11[	24	]&w[	98	];
assign	a01[	99	]=a11[	24	]&w[	99	];
assign	a01[	100	]=a11[	25	]&w[	100	];
assign	a01[	101	]=a11[	25	]&w[	101	];
assign	a01[	102	]=a11[	25	]&w[	102	];
assign	a01[	103	]=a11[	25	]&w[	103	];
assign	a01[	104	]=a11[	26	]&w[	104	];
assign	a01[	105	]=a11[	26	]&w[	105	];
assign	a01[	106	]=a11[	26	]&w[	106	];
assign	a01[	107	]=a11[	26	]&w[	107	];
assign	a01[	108	]=a11[	27	]&w[	108	];
assign	a01[	109	]=a11[	27	]&w[	109	];
assign	a01[	110	]=a11[	27	]&w[	110	];
assign	a01[	111	]=a11[	27	]&w[	111	];
assign	a01[	112	]=a11[	28	]&w[	112	];
assign	a01[	113	]=a11[	28	]&w[	113	];
assign	a01[	114	]=a11[	28	]&w[	114	];
assign	a01[	115	]=a11[	28	]&w[	115	];
assign	a01[	116	]=a11[	29	]&w[	116	];
assign	a01[	117	]=a11[	29	]&w[	117	];
assign	a01[	118	]=a11[	29	]&w[	118	];
assign	a01[	119	]=a11[	29	]&w[	119	];
assign	a01[	120	]=a11[	30	]&w[	120	];
assign	a01[	121	]=a11[	30	]&w[	121	];
assign	a01[	122	]=a11[	30	]&w[	122	];
assign	a01[	123	]=a11[	30	]&w[	123	];
assign	a01[	124	]=a11[	31	]&w[	124	];
assign	a01[	125	]=a11[	31	]&w[	125	];
assign	a01[	126	]=a11[	31	]&w[	126	];
assign	a01[	127	]=a11[	31	]&w[	127	];
assign	a01[	128	]=a11[	32	]&w[	128	];
assign	a01[	129	]=a11[	32	]&w[	129	];
assign	a01[	130	]=a11[	32	]&w[	130	];
assign	a01[	131	]=a11[	32	]&w[	131	];
assign	a01[	132	]=a11[	33	]&w[	132	];
assign	a01[	133	]=a11[	33	]&w[	133	];
assign	a01[	134	]=a11[	33	]&w[	134	];
assign	a01[	135	]=a11[	33	]&w[	135	];
assign	a01[	136	]=a11[	34	]&w[	136	];
assign	a01[	137	]=a11[	34	]&w[	137	];
assign	a01[	138	]=a11[	34	]&w[	138	];
assign	a01[	139	]=a11[	34	]&w[	139	];
assign	a01[	140	]=a11[	35	]&w[	140	];
assign	a01[	141	]=a11[	35	]&w[	141	];
assign	a01[	142	]=a11[	35	]&w[	142	];
assign	a01[	143	]=a11[	35	]&w[	143	];
assign	a01[	144	]=a11[	36	]&w[	144	];
assign	a01[	145	]=a11[	36	]&w[	145	];
assign	a01[	146	]=a11[	36	]&w[	146	];
assign	a01[	147	]=a11[	36	]&w[	147	];
assign	a01[	148	]=a11[	37	]&w[	148	];
assign	a01[	149	]=a11[	37	]&w[	149	];
assign	a01[	150	]=a11[	37	]&w[	150	];
assign	a01[	151	]=a11[	37	]&w[	151	];
assign	a01[	152	]=a11[	38	]&w[	152	];
assign	a01[	153	]=a11[	38	]&w[	153	];
assign	a01[	154	]=a11[	38	]&w[	154	];
assign	a01[	155	]=a11[	38	]&w[	155	];
assign	a01[	156	]=a11[	39	]&w[	156	];
assign	a01[	157	]=a11[	39	]&w[	157	];
assign	a01[	158	]=a11[	39	]&w[	158	];
assign	a01[	159	]=a11[	39	]&w[	159	];
assign	a01[	160	]=a11[	40	]&w[	160	];
assign	a01[	161	]=a11[	40	]&w[	161	];
assign	a01[	162	]=a11[	40	]&w[	162	];
assign	a01[	163	]=a11[	40	]&w[	163	];
assign	a01[	164	]=a11[	41	]&w[	164	];
assign	a01[	165	]=a11[	41	]&w[	165	];
assign	a01[	166	]=a11[	41	]&w[	166	];
assign	a01[	167	]=a11[	41	]&w[	167	];
assign	a01[	168	]=a11[	42	]&w[	168	];
assign	a01[	169	]=a11[	42	]&w[	169	];
assign	a01[	170	]=a11[	42	]&w[	170	];
assign	a01[	171	]=a11[	42	]&w[	171	];
assign	a01[	172	]=a11[	43	]&w[	172	];
assign	a01[	173	]=a11[	43	]&w[	173	];
assign	a01[	174	]=a11[	43	]&w[	174	];
assign	a01[	175	]=a11[	43	]&w[	175	];
assign	a01[	176	]=a11[	44	]&w[	176	];
assign	a01[	177	]=a11[	44	]&w[	177	];
assign	a01[	178	]=a11[	44	]&w[	178	];
assign	a01[	179	]=a11[	44	]&w[	179	];
assign	a01[	180	]=a11[	45	]&w[	180	];
assign	a01[	181	]=a11[	45	]&w[	181	];
assign	a01[	182	]=a11[	45	]&w[	182	];
assign	a01[	183	]=a11[	45	]&w[	183	];
assign	a01[	184	]=a11[	46	]&w[	184	];
assign	a01[	185	]=a11[	46	]&w[	185	];
assign	a01[	186	]=a11[	46	]&w[	186	];
assign	a01[	187	]=a11[	46	]&w[	187	];
assign	a01[	188	]=a11[	47	]&w[	188	];
assign	a01[	189	]=a11[	47	]&w[	189	];
assign	a01[	190	]=a11[	47	]&w[	190	];
assign	a01[	191	]=a11[	47	]&w[	191	];
assign	a01[	192	]=a11[	48	]&w[	192	];
assign	a01[	193	]=a11[	48	]&w[	193	];
assign	a01[	194	]=a11[	48	]&w[	194	];
assign	a01[	195	]=a11[	48	]&w[	195	];
assign	a01[	196	]=a11[	49	]&w[	196	];
assign	a01[	197	]=a11[	49	]&w[	197	];
assign	a01[	198	]=a11[	49	]&w[	198	];
assign	a01[	199	]=a11[	49	]&w[	199	];
assign	a01[	200	]=a11[	50	]&w[	200	];
assign	a01[	201	]=a11[	50	]&w[	201	];
assign	a01[	202	]=a11[	50	]&w[	202	];
assign	a01[	203	]=a11[	50	]&w[	203	];
assign	a01[	204	]=a11[	51	]&w[	204	];
assign	a01[	205	]=a11[	51	]&w[	205	];
assign	a01[	206	]=a11[	51	]&w[	206	];
assign	a01[	207	]=a11[	51	]&w[	207	];
assign	a01[	208	]=a11[	52	]&w[	208	];
assign	a01[	209	]=a11[	52	]&w[	209	];
assign	a01[	210	]=a11[	52	]&w[	210	];
assign	a01[	211	]=a11[	52	]&w[	211	];
assign	a01[	212	]=a11[	53	]&w[	212	];
assign	a01[	213	]=a11[	53	]&w[	213	];
assign	a01[	214	]=a11[	53	]&w[	214	];
assign	a01[	215	]=a11[	53	]&w[	215	];
assign	a01[	216	]=a11[	54	]&w[	216	];
assign	a01[	217	]=a11[	54	]&w[	217	];
assign	a01[	218	]=a11[	54	]&w[	218	];
assign	a01[	219	]=a11[	54	]&w[	219	];
assign	a01[	220	]=a11[	55	]&w[	220	];
assign	a01[	221	]=a11[	55	]&w[	221	];
assign	a01[	222	]=a11[	55	]&w[	222	];
assign	a01[	223	]=a11[	55	]&w[	223	];
assign	a01[	224	]=a11[	56	]&w[	224	];
assign	a01[	225	]=a11[	56	]&w[	225	];
assign	a01[	226	]=a11[	56	]&w[	226	];
assign	a01[	227	]=a11[	56	]&w[	227	];
assign	a01[	228	]=a11[	57	]&w[	228	];
assign	a01[	229	]=a11[	57	]&w[	229	];
assign	a01[	230	]=a11[	57	]&w[	230	];
assign	a01[	231	]=a11[	57	]&w[	231	];
assign	a01[	232	]=a11[	58	]&w[	232	];
assign	a01[	233	]=a11[	58	]&w[	233	];
assign	a01[	234	]=a11[	58	]&w[	234	];
assign	a01[	235	]=a11[	58	]&w[	235	];
assign	a01[	236	]=a11[	59	]&w[	236	];
assign	a01[	237	]=a11[	59	]&w[	237	];
assign	a01[	238	]=a11[	59	]&w[	238	];
assign	a01[	239	]=a11[	59	]&w[	239	];
assign	a01[	240	]=a11[	60	]&w[	240	];
assign	a01[	241	]=a11[	60	]&w[	241	];
assign	a01[	242	]=a11[	60	]&w[	242	];
assign	a01[	243	]=a11[	60	]&w[	243	];
assign	a01[	244	]=a11[	61	]&w[	244	];
assign	a01[	245	]=a11[	61	]&w[	245	];
assign	a01[	246	]=a11[	61	]&w[	246	];
assign	a01[	247	]=a11[	61	]&w[	247	];
assign	a01[	248	]=a11[	62	]&w[	248	];
assign	a01[	249	]=a11[	62	]&w[	249	];
assign	a01[	250	]=a11[	62	]&w[	250	];
assign	a01[	251	]=a11[	62	]&w[	251	];
assign	a01[	252	]=a11[	63	]&w[	252	];
assign	a01[	253	]=a11[	63	]&w[	253	];
assign	a01[	254	]=a11[	63	]&w[	254	];
assign	a01[	255	]=a11[	63	]&w[	255	];

assign d_out=a01;


endmodule






