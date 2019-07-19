module pri256(d_out,din);
input [255:0]din;
output [255:0]d_out;
wire [255:0]w;
wire [63:0]w1;
wire [15:0]w2;
wire [3:0]w3;
wire [15:0]w21;
wire [63:0]w11;
wire [255:0]w01;
wire [63:0]v;
wire [15:0]v1;
wire [3:0]v2;
wire v4;
wire [63:0]r1;
wire [16:0]r2;
wire [3:0]r3;
wire [3:0]e1;
wire [3:0]e2;


/*pri_encoder p1(w[0],din[3:0],v[0]);
pri_encoder p1(w[1],din[7:4],v[1]);
pri_encoder p1(w[2],din[:],v[2]);*/
//assign r1[0]=d_in[0] | d_in[1] | d_in[2] | d_in[3];

//64 chunks each of 4 bit

pri_encoder p1	(w[	3	:	0	],din[	3	:	0	],v[	0	]);
pri_encoder p2	(w[	7	:	4	],din[	7	:	4	],v[	1	]);
pri_encoder p3	(w[	11	:	8	],din[	11	:	8	],v[	2	]);
pri_encoder p4	(w[	15	:	12	],din[	15	:	12	],v[	3	]);
pri_encoder p5	(w[	19	:	16	],din[	19	:	16	],v[	4	]);
pri_encoder p6	(w[	23	:	20	],din[	23	:	20	],v[	5	]);
pri_encoder p7	(w[	27	:	24	],din[	27	:	24	],v[	6	]);
pri_encoder p8	(w[	31	:	28	],din[	31	:	28	],v[	7	]);
pri_encoder p9	(w[	35	:	32	],din[	35	:	32	],v[	8	]);
pri_encoder p10	(w[	39	:	36	],din[	39	:	36	],v[	9	]);
pri_encoder p11	(w[	43	:	40	],din[	43	:	40	],v[	10	]);
pri_encoder p12	(w[	47	:	44	],din[	47	:	44	],v[	11	]);
pri_encoder p13	(w[	51	:	48	],din[	51	:	48	],v[	12	]);
pri_encoder p14	(w[	55	:	52	],din[	55	:	52	],v[	13	]);
pri_encoder p15	(w[	59	:	56	],din[	59	:	56	],v[	14	]);
pri_encoder p16	(w[	63	:	60	],din[	63	:	60	],v[	15	]);
pri_encoder p17	(w[	67	:	64	],din[	67	:	64	],v[	16	]);
pri_encoder p18	(w[	71	:	68	],din[	71	:	68	],v[	17	]);
pri_encoder p19	(w[	75	:	72	],din[	75	:	72	],v[	18	]);
pri_encoder p20	(w[	79	:	76	],din[	79	:	76	],v[	19	]);
pri_encoder p21	(w[	83	:	80	],din[	83	:	80	],v[	20	]);
pri_encoder p22	(w[	87	:	84	],din[	87	:	84	],v[	21	]);
pri_encoder p23	(w[	91	:	88	],din[	91	:	88	],v[	22	]);
pri_encoder p24	(w[	95	:	92	],din[	95	:	92	],v[	23	]);
pri_encoder p25	(w[	99	:	96	],din[	99	:	96	],v[	24	]);
pri_encoder p26	(w[	103	:	100	],din[	103	:	100	],v[	25	]);
pri_encoder p27	(w[	107	:	104	],din[	107	:	104	],v[	26	]);
pri_encoder p28	(w[	111	:	108	],din[	111	:	108	],v[	27	]);
pri_encoder p29	(w[	115	:	112	],din[	115	:	112	],v[	28	]);
pri_encoder p30	(w[	119	:	116	],din[	119	:	116	],v[	29	]);
pri_encoder p31	(w[	123	:	120	],din[	123	:	120	],v[	30	]);
pri_encoder p32	(w[	127	:	124	],din[	127	:	124	],v[	31	]);
pri_encoder p33	(w[	131	:	128	],din[	131	:	128	],v[	32	]);
pri_encoder p34	(w[	135	:	132	],din[	135	:	132	],v[	33	]);
pri_encoder p35	(w[	139	:	136	],din[	139	:	136	],v[	34	]);
pri_encoder p36	(w[	143	:	140	],din[	143	:	140	],v[	35	]);
pri_encoder p37	(w[	147	:	144	],din[	147	:	144	],v[	36	]);
pri_encoder p38	(w[	151	:	148	],din[	151	:	148	],v[	37	]);
pri_encoder p39	(w[	155	:	152	],din[	155	:	152	],v[	38	]);
pri_encoder p40	(w[	159	:	156	],din[	159	:	156	],v[	39	]);
pri_encoder p41	(w[	163	:	160	],din[	163	:	160	],v[	40	]);
pri_encoder p42	(w[	167	:	164	],din[	167	:	164	],v[	41	]);
pri_encoder p43	(w[	171	:	168	],din[	171	:	168	],v[	42	]);
pri_encoder p44	(w[	175	:	172	],din[	175	:	172	],v[	43	]);
pri_encoder p45	(w[	179	:	176	],din[	179	:	176	],v[	44	]);
pri_encoder p46	(w[	183	:	180	],din[	183	:	180	],v[	45	]);
pri_encoder p47	(w[	187	:	184	],din[	187	:	184	],v[	46	]);
pri_encoder p48	(w[	191	:	188	],din[	191	:	188	],v[	47	]);
pri_encoder p49	(w[	195	:	192	],din[	195	:	192	],v[	48	]);
pri_encoder p50	(w[	199	:	196	],din[	199	:	196	],v[	49	]);
pri_encoder p51	(w[	203	:	200	],din[	203	:	200	],v[	50	]);
pri_encoder p52	(w[	207	:	204	],din[	207	:	204	],v[	51	]);
pri_encoder p53	(w[	211	:	208	],din[	211	:	208	],v[	52	]);
pri_encoder p54	(w[	215	:	212	],din[	215	:	212	],v[	53	]);
pri_encoder p55	(w[	219	:	216	],din[	219	:	216	],v[	54	]);
pri_encoder p56	(w[	223	:	220	],din[	223	:	220	],v[	55	]);
pri_encoder p57	(w[	227	:	224	],din[	227	:	224	],v[	56	]);
pri_encoder p58	(w[	231	:	228	],din[	231	:	228	],v[	57	]);
pri_encoder p59	(w[	235	:	232	],din[	235	:	232	],v[	58	]);
pri_encoder p60	(w[	239	:	236	],din[	239	:	236	],v[	59	]);
pri_encoder p61	(w[	243	:	240	],din[	243	:	240	],v[	60	]);
pri_encoder p62	(w[	247	:	244	],din[	247	:	244	],v[	61	]);
pri_encoder p63	(w[	251	:	248	],din[	251	:	248	],v[	62	]);
pri_encoder p64	(w[	255	:	252	],din[	255	:	252	],v[	63	]);


//or of output of pri_encoder 64 bit
assign	r1[	0	]=w[	0	]| w[	1	] | w[	2	] | w[	3	];
assign	r1[	1	]=w[	4	]| w[	5	] | w[	6	] | w[	7	];
assign	r1[	2	]=w[	8	]| w[	9	] | w[	10	] | w[	11	];
assign	r1[	3	]=w[	12	]| w[	13	] | w[	14	] | w[	15	];
assign	r1[	4	]=w[	16	]| w[	17	] | w[	18	] | w[	19	];
assign	r1[	5	]=w[	20	]| w[	21	] | w[	22	] | w[	23	];
assign	r1[	6	]=w[	24	]| w[	25	] | w[	26	] | w[	27	];
assign	r1[	7	]=w[	28	]| w[	29	] | w[	30	] | w[	31	];
assign	r1[	8	]=w[	32	]| w[	33	] | w[	34	] | w[	35	];
assign	r1[	9	]=w[	36	]| w[	37	] | w[	38	] | w[	39	];
assign	r1[	10	]=w[	40	]| w[	41	] | w[	42	] | w[	43	];
assign	r1[	11	]=w[	44	]| w[	45	] | w[	46	] | w[	47	];
assign	r1[	12	]=w[	48	]| w[	49	] | w[	50	] | w[	51	];
assign	r1[	13	]=w[	52	]| w[	53	] | w[	54	] | w[	55	];
assign	r1[	14	]=w[	56	]| w[	57	] | w[	58	] | w[	59	];
assign	r1[	15	]=w[	60	]| w[	61	] | w[	62	] | w[	63	];
assign	r1[	16	]=w[	64	]| w[	65	] | w[	66	] | w[	67	];
assign	r1[	17	]=w[	68	]| w[	69	] | w[	70	] | w[	71	];
assign	r1[	18	]=w[	72	]| w[	73	] | w[	74	] | w[	75	];
assign	r1[	19	]=w[	76	]| w[	77	] | w[	78	] | w[	79	];
assign	r1[	20	]=w[	80	]| w[	81	] | w[	82	] | w[	83	];
assign	r1[	21	]=w[	84	]| w[	85	] | w[	86	] | w[	87	];
assign	r1[	22	]=w[	88	]| w[	89	] | w[	90	] | w[	91	];
assign	r1[	23	]=w[	92	]| w[	93	] | w[	94	] | w[	95	];
assign	r1[	24	]=w[	96	]| w[	97	] | w[	98	] | w[	99	];
assign	r1[	25	]=w[	100	]| w[	101	] | w[	102	] | w[	103	];
assign	r1[	26	]=w[	104	]| w[	105	] | w[	106	] | w[	107	];
assign	r1[	27	]=w[	108	]| w[	109	] | w[	110	] | w[	111	];
assign	r1[	28	]=w[	112	]| w[	113	] | w[	114	] | w[	115	];
assign	r1[	29	]=w[	116	]| w[	117	] | w[	118	] | w[	119	];
assign	r1[	30	]=w[	120	]| w[	121	] | w[	122	] | w[	123	];
assign	r1[	31	]=w[	124	]| w[	125	] | w[	126	] | w[	127	];
assign	r1[	32	]=w[	128	]| w[	129	] | w[	130	] | w[	131	];
assign	r1[	33	]=w[	132	]| w[	133	] | w[	134	] | w[	135	];
assign	r1[	34	]=w[	136	]| w[	137	] | w[	138	] | w[	139	];
assign	r1[	35	]=w[	140	]| w[	141	] | w[	142	] | w[	143	];
assign	r1[	36	]=w[	144	]| w[	145	] | w[	146	] | w[	147	];
assign	r1[	37	]=w[	148	]| w[	149	] | w[	150	] | w[	151	];
assign	r1[	38	]=w[	152	]| w[	153	] | w[	154	] | w[	155	];
assign	r1[	39	]=w[	156	]| w[	157	] | w[	158	] | w[	159	];
assign	r1[	40	]=w[	160	]| w[	161	] | w[	162	] | w[	163	];
assign	r1[	41	]=w[	164	]| w[	165	] | w[	166	] | w[	167	];
assign	r1[	42	]=w[	168	]| w[	169	] | w[	170	] | w[	171	];
assign	r1[	43	]=w[	172	]| w[	173	] | w[	174	] | w[	175	];
assign	r1[	44	]=w[	176	]| w[	177	] | w[	178	] | w[	179	];
assign	r1[	45	]=w[	180	]| w[	181	] | w[	182	] | w[	183	];
assign	r1[	46	]=w[	184	]| w[	185	] | w[	186	] | w[	187	];
assign	r1[	47	]=w[	188	]| w[	189	] | w[	190	] | w[	191	];
assign	r1[	48	]=w[	192	]| w[	193	] | w[	194	] | w[	195	];
assign	r1[	49	]=w[	196	]| w[	197	] | w[	198	] | w[	199	];
assign	r1[	50	]=w[	200	]| w[	201	] | w[	202	] | w[	203	];
assign	r1[	51	]=w[	204	]| w[	205	] | w[	206	] | w[	207	];
assign	r1[	52	]=w[	208	]| w[	209	] | w[	210	] | w[	211	];
assign	r1[	53	]=w[	212	]| w[	213	] | w[	214	] | w[	215	];
assign	r1[	54	]=w[	216	]| w[	217	] | w[	218	] | w[	219	];
assign	r1[	55	]=w[	220	]| w[	221	] | w[	222	] | w[	223	];
assign	r1[	56	]=w[	224	]| w[	225	] | w[	226	] | w[	227	];
assign	r1[	57	]=w[	228	]| w[	229	] | w[	230	] | w[	231	];
assign	r1[	58	]=w[	232	]| w[	233	] | w[	234	] | w[	235	];
assign	r1[	59	]=w[	236	]| w[	237	] | w[	238	] | w[	239	];
assign	r1[	60	]=w[	240	]| w[	241	] | w[	242	] | w[	243	];
assign	r1[	61	]=w[	244	]| w[	245	] | w[	246	] | w[	247	];
assign	r1[	62	]=w[	248	]| w[	249	] | w[	250	] | w[	251	];
assign	r1[	63	]=w[	252	]| w[	253	] | w[	254	] | w[	255	];

//16 chunks of 4bit each

pri_encoder q1	(w1[	3	:	0	],r1[	3	:	0	],v1[	0	]);
pri_encoder q2	(w1[	7	:	4	],r1[	7	:	4	],v1[	1	]);
pri_encoder q3	(w1[	11	:	8	],r1[	11	:	8	],v1[	2	]);
pri_encoder q4	(w1[	15	:	12	],r1[	15	:	12	],v1[	3	]);
pri_encoder q5	(w1[	19	:	16	],r1[	19	:	16	],v1[	4	]);
pri_encoder q6	(w1[	23	:	20	],r1[	23	:	20	],v1[	5	]);
pri_encoder q7	(w1[	27	:	24	],r1[	27	:	24	],v1[	6	]);
pri_encoder q8	(w1[	31	:	28	],r1[	31	:	28	],v1[	7	]);
pri_encoder q9	(w1[	35	:	32	],r1[	35	:	32	],v1[	8	]);
pri_encoder q10	(w1[	39	:	36	],r1[	39	:	36	],v1[	9	]);
pri_encoder q11	(w1[	43	:	40	],r1[	43	:	40	],v1[	10	]);
pri_encoder q12	(w1[	47	:	44	],r1[	47	:	44	],v1[	11	]);
pri_encoder q13	(w1[	51	:	48	],r1[	51	:	48	],v1[	12	]);
pri_encoder q14	(w1[	55	:	52	],r1[	55	:	52	],v1[	13	]);
pri_encoder q15	(w1[	59	:	56	],r1[	59	:	56	],v1[	14	]);
pri_encoder q16	(w1[	63	:	60	],r1[	63	:	60	],v1[	15	]);

//or of output-16bit
assign	r2[	0	]=w1[	0	]| w1[	1	] | w1[	2	] | w1[	3	];
assign	r2[	1	]=w1[	4	]| w1[	5	] | w1[	6	] | w1[	7	];
assign	r2[	2	]=w1[	8	]| w1[	9	] | w1[	10	] | w1[	11	];
assign	r2[	3	]=w1[	12	]| w1[	13	] | w1[	14	] | w1[	15	];
assign	r2[	4	]=w1[	16	]| w1[	17	] | w1[	18	] | w1[	19	];
assign	r2[	5	]=w1[	20	]| w1[	21	] | w1[	22	] | w1[	23	];
assign	r2[	6	]=w1[	24	]| w1[	25	] | w1[	26	] | w1[	27	];
assign	r2[	7	]=w1[	28	]| w1[	29	] | w1[	30	] | w1[	31	];
assign	r2[	8	]=w1[	32	]| w1[	33	] | w1[	34	] | w1[	35	];
assign	r2[	9	]=w1[	36	]| w1[	37	] | w1[	38	] | w1[	39	];
assign	r2[	10	]=w1[	40	]| w1[	41	] | w1[	42	] | w1[	43	];
assign	r2[	11	]=w1[	44	]| w1[	45	] | w1[	46	] | w1[	47	];
assign	r2[	12	]=w1[	48	]| w1[	49	] | w1[	50	] | w1[	51	];
assign	r2[	13	]=w1[	52	]| w1[	53	] | w1[	54	] | w1[	55	];
assign	r2[	14	]=w1[	56	]| w1[	57	] | w1[	58	] | w1[	59	];
assign	r2[	15	]=w1[	60	]| w1[	61	] | w1[	62	] | w1[	63	];

//4 chunks of each 4 bit
pri_encoder	qw1	(w2[	3	:	0	],r2[	3	:	0	],v2[	0	]);
pri_encoder	qw2	(w2[	7	:	4	],r2[	7	:	4	],v2[	1	]);
pri_encoder	qw3	(w2[	11	:	8	],r2[	11	:	8	],v2[	2	]);
pri_encoder	qw4	(w2[	15	:	12	],r2[	15	:	12	],v2[	3	]);

//or of output-4bit
assign	r3[	0	]=w2[	0	]| w2[	1	] | w2[	2	] | w2[	3	];
assign	r3[	1	]=w2[	4	]| w2[	5	] | w2[	6	] | w2[	7	];
assign	r3[	2	]=w2[	8	]| w2[	9	] | w2[	10	] | w2[	11	];
assign	r3[	3	]=w2[	12	]| w2[	13	] | w2[	14	] | w2[	15	];

//1 chunk of 4 bit
pri_encoder wq(w3[3:0],r3[3:0],v4);

//assign w21[0]=w3[0] & w2[0];
//assign w21[1]=w3[0] & w2[1];

//backtracking of 4bit to 16 bit
assign	w21[	0	]=w3[0] &	w2[	0	];
assign	w21[	1	]=w3[0] &	w2[	1	];
assign	w21[	2	]=w3[0] &	w2[	2	];
assign	w21[	3	]=w3[0] &	w2[	3	];
assign	w21[	4	]=w3[1] &	w2[	4	];
assign	w21[	5	]=w3[1] &	w2[	5	];
assign	w21[	6	]=w3[1] &	w2[	6	];
assign	w21[	7	]=w3[1] &	w2[	7	];
assign	w21[	8	]=w3[2] &	w2[	8	];
assign	w21[	9	]=w3[2] &	w2[	9	];
assign	w21[	10	]=w3[2] &	w2[	10	];
assign	w21[	11	]=w3[2] &	w2[	11	];
assign	w21[	12	]=w3[3] &	w2[	12	];
assign	w21[	13	]=w3[3] &	w2[	13	];
assign	w21[	14	]=w3[3] &	w2[	14	];
assign	w21[	15	]=w3[3] &	w2[	15	];

//backtracking of 16bit to 64bit
//assign w11[0]=w21[0] & w1[0];

assign	w11[	0	]=w21[	0	]&w1[	0	];
assign	w11[	1	]=w21[	0	]&w1[	1	];
assign	w11[	2	]=w21[	0	]&w1[	2	];
assign	w11[	3	]=w21[	0	]&w1[	3	];
assign	w11[	4	]=w21[	1	]&w1[	4	];
assign	w11[	5	]=w21[	1	]&w1[	5	];
assign	w11[	6	]=w21[	1	]&w1[	6	];
assign	w11[	7	]=w21[	1	]&w1[	7	];
assign	w11[	8	]=w21[	2	]&w1[	8	];
assign	w11[	9	]=w21[	2	]&w1[	9	];
assign	w11[	10	]=w21[	2	]&w1[	10	];
assign	w11[	11	]=w21[	2	]&w1[	11	];
assign	w11[	12	]=w21[	3	]&w1[	12	];
assign	w11[	13	]=w21[	3	]&w1[	13	];
assign	w11[	14	]=w21[	3	]&w1[	14	];
assign	w11[	15	]=w21[	3	]&w1[	15	];
assign	w11[	16	]=w21[	4	]&w1[	16	];
assign	w11[	17	]=w21[	4	]&w1[	17	];
assign	w11[	18	]=w21[	4	]&w1[	18	];
assign	w11[	19	]=w21[	4	]&w1[	19	];
assign	w11[	20	]=w21[	5	]&w1[	20	];
assign	w11[	21	]=w21[	5	]&w1[	21	];
assign	w11[	22	]=w21[	5	]&w1[	22	];
assign	w11[	23	]=w21[	5	]&w1[	23	];
assign	w11[	24	]=w21[	6	]&w1[	24	];
assign	w11[	25	]=w21[	6	]&w1[	25	];
assign	w11[	26	]=w21[	6	]&w1[	26	];
assign	w11[	27	]=w21[	6	]&w1[	27	];
assign	w11[	28	]=w21[	7	]&w1[	28	];
assign	w11[	29	]=w21[	7	]&w1[	29	];
assign	w11[	30	]=w21[	7	]&w1[	30	];
assign	w11[	31	]=w21[	7	]&w1[	31	];
assign	w11[	32	]=w21[	8	]&w1[	32	];
assign	w11[	33	]=w21[	8	]&w1[	33	];
assign	w11[	34	]=w21[	8	]&w1[	34	];
assign	w11[	35	]=w21[	8	]&w1[	35	];
assign	w11[	36	]=w21[	9	]&w1[	36	];
assign	w11[	37	]=w21[	9	]&w1[	37	];
assign	w11[	38	]=w21[	9	]&w1[	38	];
assign	w11[	39	]=w21[	9	]&w1[	39	];
assign	w11[	40	]=w21[	10	]&w1[	40	];
assign	w11[	41	]=w21[	10	]&w1[	41	];
assign	w11[	42	]=w21[	10	]&w1[	42	];
assign	w11[	43	]=w21[	10	]&w1[	43	];
assign	w11[	44	]=w21[	11	]&w1[	44	];
assign	w11[	45	]=w21[	11	]&w1[	45	];
assign	w11[	46	]=w21[	11	]&w1[	46	];
assign	w11[	47	]=w21[	11	]&w1[	47	];
assign	w11[	48	]=w21[	12	]&w1[	48	];
assign	w11[	49	]=w21[	12	]&w1[	49	];
assign	w11[	50	]=w21[	12	]&w1[	50	];
assign	w11[	51	]=w21[	12	]&w1[	51	];
assign	w11[	52	]=w21[	13	]&w1[	52	];
assign	w11[	53	]=w21[	13	]&w1[	53	];
assign	w11[	54	]=w21[	13	]&w1[	54	];
assign	w11[	55	]=w21[	13	]&w1[	55	];
assign	w11[	56	]=w21[	14	]&w1[	56	];
assign	w11[	57	]=w21[	14	]&w1[	57	];
assign	w11[	58	]=w21[	14	]&w1[	58	];
assign	w11[	59	]=w21[	14	]&w1[	59	];
assign	w11[	60	]=w21[	15	]&w1[	60	];
assign	w11[	61	]=w21[	15	]&w1[	61	];
assign	w11[	62	]=w21[	15	]&w1[	62	];
assign	w11[	63	]=w21[	15	]&w1[	63	];

//backtracking 64bit to 256bit
assign	w01[	0	]=w11[	0	]&w[	0	];
assign	w01[	1	]=w11[	0	]&w[	1	];
assign	w01[	2	]=w11[	0	]&w[	2	];
assign	w01[	3	]=w11[	0	]&w[	3	];
assign	w01[	4	]=w11[	1	]&w[	4	];
assign	w01[	5	]=w11[	1	]&w[	5	];
assign	w01[	6	]=w11[	1	]&w[	6	];
assign	w01[	7	]=w11[	1	]&w[	7	];
assign	w01[	8	]=w11[	2	]&w[	8	];
assign	w01[	9	]=w11[	2	]&w[	9	];
assign	w01[	10	]=w11[	2	]&w[	10	];
assign	w01[	11	]=w11[	2	]&w[	11	];
assign	w01[	12	]=w11[	3	]&w[	12	];
assign	w01[	13	]=w11[	3	]&w[	13	];
assign	w01[	14	]=w11[	3	]&w[	14	];
assign	w01[	15	]=w11[	3	]&w[	15	];
assign	w01[	16	]=w11[	4	]&w[	16	];
assign	w01[	17	]=w11[	4	]&w[	17	];
assign	w01[	18	]=w11[	4	]&w[	18	];
assign	w01[	19	]=w11[	4	]&w[	19	];
assign	w01[	20	]=w11[	5	]&w[	20	];
assign	w01[	21	]=w11[	5	]&w[	21	];
assign	w01[	22	]=w11[	5	]&w[	22	];
assign	w01[	23	]=w11[	5	]&w[	23	];
assign	w01[	24	]=w11[	6	]&w[	24	];
assign	w01[	25	]=w11[	6	]&w[	25	];
assign	w01[	26	]=w11[	6	]&w[	26	];
assign	w01[	27	]=w11[	6	]&w[	27	];
assign	w01[	28	]=w11[	7	]&w[	28	];
assign	w01[	29	]=w11[	7	]&w[	29	];
assign	w01[	30	]=w11[	7	]&w[	30	];
assign	w01[	31	]=w11[	7	]&w[	31	];
assign	w01[	32	]=w11[	8	]&w[	32	];
assign	w01[	33	]=w11[	8	]&w[	33	];
assign	w01[	34	]=w11[	8	]&w[	34	];
assign	w01[	35	]=w11[	8	]&w[	35	];
assign	w01[	36	]=w11[	9	]&w[	36	];
assign	w01[	37	]=w11[	9	]&w[	37	];
assign	w01[	38	]=w11[	9	]&w[	38	];
assign	w01[	39	]=w11[	9	]&w[	39	];
assign	w01[	40	]=w11[	10	]&w[	40	];
assign	w01[	41	]=w11[	10	]&w[	41	];
assign	w01[	42	]=w11[	10	]&w[	42	];
assign	w01[	43	]=w11[	10	]&w[	43	];
assign	w01[	44	]=w11[	11	]&w[	44	];
assign	w01[	45	]=w11[	11	]&w[	45	];
assign	w01[	46	]=w11[	11	]&w[	46	];
assign	w01[	47	]=w11[	11	]&w[	47	];
assign	w01[	48	]=w11[	12	]&w[	48	];
assign	w01[	49	]=w11[	12	]&w[	49	];
assign	w01[	50	]=w11[	12	]&w[	50	];
assign	w01[	51	]=w11[	12	]&w[	51	];
assign	w01[	52	]=w11[	13	]&w[	52	];
assign	w01[	53	]=w11[	13	]&w[	53	];
assign	w01[	54	]=w11[	13	]&w[	54	];
assign	w01[	55	]=w11[	13	]&w[	55	];
assign	w01[	56	]=w11[	14	]&w[	56	];
assign	w01[	57	]=w11[	14	]&w[	57	];
assign	w01[	58	]=w11[	14	]&w[	58	];
assign	w01[	59	]=w11[	14	]&w[	59	];
assign	w01[	60	]=w11[	15	]&w[	60	];
assign	w01[	61	]=w11[	15	]&w[	61	];
assign	w01[	62	]=w11[	15	]&w[	62	];
assign	w01[	63	]=w11[	15	]&w[	63	];
assign	w01[	64	]=w11[	16	]&w[	64	];
assign	w01[	65	]=w11[	16	]&w[	65	];
assign	w01[	66	]=w11[	16	]&w[	66	];
assign	w01[	67	]=w11[	16	]&w[	67	];
assign	w01[	68	]=w11[	17	]&w[	68	];
assign	w01[	69	]=w11[	17	]&w[	69	];
assign	w01[	70	]=w11[	17	]&w[	70	];
assign	w01[	71	]=w11[	17	]&w[	71	];
assign	w01[	72	]=w11[	18	]&w[	72	];
assign	w01[	73	]=w11[	18	]&w[	73	];
assign	w01[	74	]=w11[	18	]&w[	74	];
assign	w01[	75	]=w11[	18	]&w[	75	];
assign	w01[	76	]=w11[	19	]&w[	76	];
assign	w01[	77	]=w11[	19	]&w[	77	];
assign	w01[	78	]=w11[	19	]&w[	78	];
assign	w01[	79	]=w11[	19	]&w[	79	];
assign	w01[	80	]=w11[	20	]&w[	80	];
assign	w01[	81	]=w11[	20	]&w[	81	];
assign	w01[	82	]=w11[	20	]&w[	82	];
assign	w01[	83	]=w11[	20	]&w[	83	];
assign	w01[	84	]=w11[	21	]&w[	84	];
assign	w01[	85	]=w11[	21	]&w[	85	];
assign	w01[	86	]=w11[	21	]&w[	86	];
assign	w01[	87	]=w11[	21	]&w[	87	];
assign	w01[	88	]=w11[	22	]&w[	88	];
assign	w01[	89	]=w11[	22	]&w[	89	];
assign	w01[	90	]=w11[	22	]&w[	90	];
assign	w01[	91	]=w11[	22	]&w[	91	];
assign	w01[	92	]=w11[	23	]&w[	92	];
assign	w01[	93	]=w11[	23	]&w[	93	];
assign	w01[	94	]=w11[	23	]&w[	94	];
assign	w01[	95	]=w11[	23	]&w[	95	];
assign	w01[	96	]=w11[	24	]&w[	96	];
assign	w01[	97	]=w11[	24	]&w[	97	];
assign	w01[	98	]=w11[	24	]&w[	98	];
assign	w01[	99	]=w11[	24	]&w[	99	];
assign	w01[	100	]=w11[	25	]&w[	100	];
assign	w01[	101	]=w11[	25	]&w[	101	];
assign	w01[	102	]=w11[	25	]&w[	102	];
assign	w01[	103	]=w11[	25	]&w[	103	];
assign	w01[	104	]=w11[	26	]&w[	104	];
assign	w01[	105	]=w11[	26	]&w[	105	];
assign	w01[	106	]=w11[	26	]&w[	106	];
assign	w01[	107	]=w11[	26	]&w[	107	];
assign	w01[	108	]=w11[	27	]&w[	108	];
assign	w01[	109	]=w11[	27	]&w[	109	];
assign	w01[	110	]=w11[	27	]&w[	110	];
assign	w01[	111	]=w11[	27	]&w[	111	];
assign	w01[	112	]=w11[	28	]&w[	112	];
assign	w01[	113	]=w11[	28	]&w[	113	];
assign	w01[	114	]=w11[	28	]&w[	114	];
assign	w01[	115	]=w11[	28	]&w[	115	];
assign	w01[	116	]=w11[	29	]&w[	116	];
assign	w01[	117	]=w11[	29	]&w[	117	];
assign	w01[	118	]=w11[	29	]&w[	118	];
assign	w01[	119	]=w11[	29	]&w[	119	];
assign	w01[	120	]=w11[	30	]&w[	120	];
assign	w01[	121	]=w11[	30	]&w[	121	];
assign	w01[	122	]=w11[	30	]&w[	122	];
assign	w01[	123	]=w11[	30	]&w[	123	];
assign	w01[	124	]=w11[	31	]&w[	124	];
assign	w01[	125	]=w11[	31	]&w[	125	];
assign	w01[	126	]=w11[	31	]&w[	126	];
assign	w01[	127	]=w11[	31	]&w[	127	];
assign	w01[	128	]=w11[	32	]&w[	128	];
assign	w01[	129	]=w11[	32	]&w[	129	];
assign	w01[	130	]=w11[	32	]&w[	130	];
assign	w01[	131	]=w11[	32	]&w[	131	];
assign	w01[	132	]=w11[	33	]&w[	132	];
assign	w01[	133	]=w11[	33	]&w[	133	];
assign	w01[	134	]=w11[	33	]&w[	134	];
assign	w01[	135	]=w11[	33	]&w[	135	];
assign	w01[	136	]=w11[	34	]&w[	136	];
assign	w01[	137	]=w11[	34	]&w[	137	];
assign	w01[	138	]=w11[	34	]&w[	138	];
assign	w01[	139	]=w11[	34	]&w[	139	];
assign	w01[	140	]=w11[	35	]&w[	140	];
assign	w01[	141	]=w11[	35	]&w[	141	];
assign	w01[	142	]=w11[	35	]&w[	142	];
assign	w01[	143	]=w11[	35	]&w[	143	];
assign	w01[	144	]=w11[	36	]&w[	144	];
assign	w01[	145	]=w11[	36	]&w[	145	];
assign	w01[	146	]=w11[	36	]&w[	146	];
assign	w01[	147	]=w11[	36	]&w[	147	];
assign	w01[	148	]=w11[	37	]&w[	148	];
assign	w01[	149	]=w11[	37	]&w[	149	];
assign	w01[	150	]=w11[	37	]&w[	150	];
assign	w01[	151	]=w11[	37	]&w[	151	];
assign	w01[	152	]=w11[	38	]&w[	152	];
assign	w01[	153	]=w11[	38	]&w[	153	];
assign	w01[	154	]=w11[	38	]&w[	154	];
assign	w01[	155	]=w11[	38	]&w[	155	];
assign	w01[	156	]=w11[	39	]&w[	156	];
assign	w01[	157	]=w11[	39	]&w[	157	];
assign	w01[	158	]=w11[	39	]&w[	158	];
assign	w01[	159	]=w11[	39	]&w[	159	];
assign	w01[	160	]=w11[	40	]&w[	160	];
assign	w01[	161	]=w11[	40	]&w[	161	];
assign	w01[	162	]=w11[	40	]&w[	162	];
assign	w01[	163	]=w11[	40	]&w[	163	];
assign	w01[	164	]=w11[	41	]&w[	164	];
assign	w01[	165	]=w11[	41	]&w[	165	];
assign	w01[	166	]=w11[	41	]&w[	166	];
assign	w01[	167	]=w11[	41	]&w[	167	];
assign	w01[	168	]=w11[	42	]&w[	168	];
assign	w01[	169	]=w11[	42	]&w[	169	];
assign	w01[	170	]=w11[	42	]&w[	170	];
assign	w01[	171	]=w11[	42	]&w[	171	];
assign	w01[	172	]=w11[	43	]&w[	172	];
assign	w01[	173	]=w11[	43	]&w[	173	];
assign	w01[	174	]=w11[	43	]&w[	174	];
assign	w01[	175	]=w11[	43	]&w[	175	];
assign	w01[	176	]=w11[	44	]&w[	176	];
assign	w01[	177	]=w11[	44	]&w[	177	];
assign	w01[	178	]=w11[	44	]&w[	178	];
assign	w01[	179	]=w11[	44	]&w[	179	];
assign	w01[	180	]=w11[	45	]&w[	180	];
assign	w01[	181	]=w11[	45	]&w[	181	];
assign	w01[	182	]=w11[	45	]&w[	182	];
assign	w01[	183	]=w11[	45	]&w[	183	];
assign	w01[	184	]=w11[	46	]&w[	184	];
assign	w01[	185	]=w11[	46	]&w[	185	];
assign	w01[	186	]=w11[	46	]&w[	186	];
assign	w01[	187	]=w11[	46	]&w[	187	];
assign	w01[	188	]=w11[	47	]&w[	188	];
assign	w01[	189	]=w11[	47	]&w[	189	];
assign	w01[	190	]=w11[	47	]&w[	190	];
assign	w01[	191	]=w11[	47	]&w[	191	];
assign	w01[	192	]=w11[	48	]&w[	192	];
assign	w01[	193	]=w11[	48	]&w[	193	];
assign	w01[	194	]=w11[	48	]&w[	194	];
assign	w01[	195	]=w11[	48	]&w[	195	];
assign	w01[	196	]=w11[	49	]&w[	196	];
assign	w01[	197	]=w11[	49	]&w[	197	];
assign	w01[	198	]=w11[	49	]&w[	198	];
assign	w01[	199	]=w11[	49	]&w[	199	];
assign	w01[	200	]=w11[	50	]&w[	200	];
assign	w01[	201	]=w11[	50	]&w[	201	];
assign	w01[	202	]=w11[	50	]&w[	202	];
assign	w01[	203	]=w11[	50	]&w[	203	];
assign	w01[	204	]=w11[	51	]&w[	204	];
assign	w01[	205	]=w11[	51	]&w[	205	];
assign	w01[	206	]=w11[	51	]&w[	206	];
assign	w01[	207	]=w11[	51	]&w[	207	];
assign	w01[	208	]=w11[	52	]&w[	208	];
assign	w01[	209	]=w11[	52	]&w[	209	];
assign	w01[	210	]=w11[	52	]&w[	210	];
assign	w01[	211	]=w11[	52	]&w[	211	];
assign	w01[	212	]=w11[	53	]&w[	212	];
assign	w01[	213	]=w11[	53	]&w[	213	];
assign	w01[	214	]=w11[	53	]&w[	214	];
assign	w01[	215	]=w11[	53	]&w[	215	];
assign	w01[	216	]=w11[	54	]&w[	216	];
assign	w01[	217	]=w11[	54	]&w[	217	];
assign	w01[	218	]=w11[	54	]&w[	218	];
assign	w01[	219	]=w11[	54	]&w[	219	];
assign	w01[	220	]=w11[	55	]&w[	220	];
assign	w01[	221	]=w11[	55	]&w[	221	];
assign	w01[	222	]=w11[	55	]&w[	222	];
assign	w01[	223	]=w11[	55	]&w[	223	];
assign	w01[	224	]=w11[	56	]&w[	224	];
assign	w01[	225	]=w11[	56	]&w[	225	];
assign	w01[	226	]=w11[	56	]&w[	226	];
assign	w01[	227	]=w11[	56	]&w[	227	];
assign	w01[	228	]=w11[	57	]&w[	228	];
assign	w01[	229	]=w11[	57	]&w[	229	];
assign	w01[	230	]=w11[	57	]&w[	230	];
assign	w01[	231	]=w11[	57	]&w[	231	];
assign	w01[	232	]=w11[	58	]&w[	232	];
assign	w01[	233	]=w11[	58	]&w[	233	];
assign	w01[	234	]=w11[	58	]&w[	234	];
assign	w01[	235	]=w11[	58	]&w[	235	];
assign	w01[	236	]=w11[	59	]&w[	236	];
assign	w01[	237	]=w11[	59	]&w[	237	];
assign	w01[	238	]=w11[	59	]&w[	238	];
assign	w01[	239	]=w11[	59	]&w[	239	];
assign	w01[	240	]=w11[	60	]&w[	240	];
assign	w01[	241	]=w11[	60	]&w[	241	];
assign	w01[	242	]=w11[	60	]&w[	242	];
assign	w01[	243	]=w11[	60	]&w[	243	];
assign	w01[	244	]=w11[	61	]&w[	244	];
assign	w01[	245	]=w11[	61	]&w[	245	];
assign	w01[	246	]=w11[	61	]&w[	246	];
assign	w01[	247	]=w11[	61	]&w[	247	];
assign	w01[	248	]=w11[	62	]&w[	248	];
assign	w01[	249	]=w11[	62	]&w[	249	];
assign	w01[	250	]=w11[	62	]&w[	250	];
assign	w01[	251	]=w11[	62	]&w[	251	];
assign	w01[	252	]=w11[	63	]&w[	252	];
assign	w01[	253	]=w11[	63	]&w[	253	];
assign	w01[	254	]=w11[	63	]&w[	254	];
assign	w01[	255	]=w11[	63	]&w[	255	];

assign d_out=w01;
//assign d_out[63:0]=r1[63:0];
//assign d_out[255:64]=192'bx;

endmodule






