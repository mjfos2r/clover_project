
            set terminal png size 600,400 truecolor
            set output "out/coverage.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set ylabel "Number of mapped bases"
            set xlabel "Coverage"
            set log y
            set style fill solid border -1
            set title "transcripts" noenhanced
            set xrange [:1]
            plot '-' with lines notitle
        1	149
end
