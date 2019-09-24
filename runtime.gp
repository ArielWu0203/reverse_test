reset
set term png enhanced font 'Verdana,10'
set output 'runtime.png'
set xlabel "reverse times(times)"
set ylabel "time(secs)"
set title "Perfomance Comparison of Reverse"

plot [:][:0.003] 'test1.txt' with linespoints title "reverse with loop" ,\
'test2.txt' with linespoints title "reverse without loop"
