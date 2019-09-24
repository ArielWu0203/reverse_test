reset
set term png enhanced font 'Verdana,10'
set output 'runtime.png'
set xlabel "reverse times"
set ylabel "time(secs)"
set title "Perfomance Comparison of Reverse"

plot 'test1.txt' using 2 with linespoints title 'reverse with loop' , \
'' using 3 with linespoints title 'reverse without loop'
