
        set terminal png size 600,400 truecolor
        set output "out/indel-dist.png"
        set grid xtics ytics y2tics back lc rgb "#cccccc"
        set style line 1 linetype 1  linecolor rgb "red"
        set style line 2 linetype 2  linecolor rgb "black"
        set style line 3 linetype 3  linecolor rgb "green"
        set style increment user
        set ylabel "Indel count [log]"
        set xlabel "Indel length"
        set y2label "Insertions/Deletions ratio"
        set log y
        set y2tics nomirror
        set ytics nomirror
        set title "transcripts" noenhanced
        plot '-' w l ti 'Insertions', '-' w l ti 'Deletions', '-' axes x1y2 w l ti "Ins/Dels ratio"
    1	7558531
2	3027500
3	2359430
4	1953466
5	1391456
6	1209683
7	1192980
8	1189190
9	1113607
10	1136033
11	1289439
12	1484270
13	1793275
14	2036640
15	1067486
16	644199
17	499992
18	370431
19	238974
20	153852
21	82468
22	46058
23	27846
24	19414
25	11284
26	7794
27	1130
28	618
end
1	6861026
2	2176041
3	894679
4	485516
5	246761
6	165757
7	89020
8	70428
9	54513
10	31858
11	88433
12	30292
13	11480
14	14283
15	9124
16	6973
17	7856
18	6695
19	3763
20	2619
21	2606
22	2816
23	1929
24	1173
25	379
26	320
27	219
28	154
end
1	1.101662
2	1.391288
3	2.637180
4	4.023484
5	5.638881
6	7.297930
7	13.401258
8	16.885188
9	20.428283
10	35.659269
11	14.580971
12	48.998746
13	156.208624
14	142.591892
15	116.997589
16	92.384770
17	63.644603
18	55.329500
19	63.506245
20	58.744559
21	31.645434
22	16.355824
23	14.435459
24	16.550725
25	29.773087
26	24.356250
27	5.159817
28	4.012987
end
