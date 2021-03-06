#! /bin/bash
set terminal pdfcairo
set output "time_aparapi_matrix-5x.pdf"
set title "GPMatrix - time comparison with aparapi and vanilla"
set xlabel "Matrix size"
set ylabel "Time [s]"

set label "Intel(R) Xeon(R) CPU E5-2609 v2 @ 2.50GHz - versus" at screen 0.5,0.5 center
set label "Nvidia Tesla C2075 - double precision" at screen 0.5,0.4 center

plot '../Analysis/Aparapi/Matrix/stats/GPMatrix-100-3000-100-x5.csv' with lines lt 4,\
     '../Vanilla/Matrix/stats/GPMatrix-100-3000-100.csv' with lines lt 1
