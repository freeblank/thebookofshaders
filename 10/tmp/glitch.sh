#!/bin/bash

SHADER=$1
SEC=$1

COUNTER=0
for i in `seq -w 0.01 .031 $SEC`; do
	echo $i
    `glslViewer $SHADER -s $i -o frame-$COUNTER.png`
    let COUNTER=COUNTER+1
done

convert -delay 3.5 -loop 1 frame-*.png animated.gif
