#lang sicp
(define riga1 '(1640 590	93	958	73	1263	1405	1363	737	712	1501	390	68	1554	959	79))
(define riga2 '(4209	128	131	2379	2568	2784	2133	145	3618	1274	3875	158	1506	3455	1621	3799))
(define riga3 '(206	1951	2502	2697	2997	74	76	78	1534	81	2775	2059	3026	77	2600	3067))
(define riga4 '(373	1661	94	102	2219	1967	1856	417	1594	75	100	2251	2200	1825	1291	1021))
(define riga5 '(57	72	51	1101	1303	60	1227	421	970	1058	138	333	1320	1302	402	1210))
(define riga6 '(4833	5427	179	3934	4533	5124	4832	2088	94	200	199	1114	4151	1795	208	3036))
(define riga7 '(759	876	110	79	1656	1691	185	544	616	312	757	1712	92	97	1513	1683))
(define riga8 '(1250	1186	284	107	1190	1233	573	1181	1041	655	132	547	395	146	119	515))
(define riga9 '(505	1726	79	180	86	1941	1597	1785	1608	1692	968	1177	94	184	91	31))
(define riga10 '(1366	2053	1820	1570	70	506	53	415	717	1263	82	366	74	1255	2020	1985))
(define riga11 '(2365	5585	2285	4424	5560	3188	3764	187	88	223	1544	5023	4013	5236	214	196))
(define riga12 '(1487	1305	1359	1615	6579	2623	4591	150	5030	188	146	4458	5724	5828	1960	221))
(define riga13 '(3114	688	3110	334	1921	153	4083	131	2234	3556	3573	3764	127	919	3293	104))
(define riga14 '(1008	78	1196	607	135	1409	296	475	915	157	1419	1304	153	423	163	704))
(define riga15 '(235	4935	4249	3316	1202	221	1835	380	249	1108	1922	5607	4255	238	211	3973))
(define riga16 '(1738	207	179	137	226	907	1468	1341	1582	1430	851	213	393	1727	1389	632))

(define selezione
  (lambda (k riga)
    (list-ref riga (- k 1))
    ))

(define checksum
  (lambda (a b c d e f g h i l m n o p q r)
    (+ ((- (magg a) (minn a)))
       (- (magg b) (minn b))
       (- (magg c) (minn c))
       (- (magg d) (minn d))
       (- (magg e) (minn e))
       (- (magg f) (minn f))
       (- (magg g) (minn g))
       (- (magg h) (minn h))
       (- (magg i) (minn i))
       (- (magg l) (minn l))
       (- (magg m) (minn m))
       (- (magg n) (minn n))
       (- (magg o) (minn o))
       (- (magg p) (minn p))
       (- (magg q) (minn q))
       (- (magg r) (minn r)))
    ))

(define maggiore_riga
  (lambda (riga maggiore k) ;riga = riga, maggiore = elemento maggiore della riga, k = index della riga
    (let ((l (length riga)))
      (if (> k l)
          maggiore
          (if (>= maggiore (selezione k riga))
              (maggiore_riga riga maggiore (+ k 1))
              (maggiore_riga riga (selezione k riga) (+ k 1))))
      )
    ))

(define minore_riga
  (lambda (riga minore k) ;riga = riga, maggiore = elemento maggiore della riga, k = index della riga
    (let ((l (length riga)))
      (if (> k l)
          minore
          (if (<= minore (selezione k riga))
              (minore_riga riga minore (+ k 1))
              (minore_riga riga (selezione k riga) (+ k 1))))
      )
    ))

(define minn
  (lambda (riga)
    (minore_riga riga (selezione 1 riga) 1)
    ))

(define magg
  (lambda (riga)
    (maggiore_riga riga (selezione 1 riga) 1)
    ))

(checksum riga1 riga2 riga3 riga4 riga5 riga6 riga7 riga8 riga9 riga10 riga11 riga12 riga13 riga14 riga15 riga16)