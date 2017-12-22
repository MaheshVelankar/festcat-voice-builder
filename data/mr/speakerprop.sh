#!/bin/bash

DOL1=$1
echo "got arg 1 = " ${DOL1}

export SPEAKER="$1";
export DATASET="man_mh";
export VER=1;
export QNAME="mr_IN.talk";
export QNUM=001;
export IDIOMA="mr";
export SAMPFREQ=48000;
export FRAMESHIFT=240;
export FRAMELEN=1200;
export FREQWARP=0.55;
export NORMALIZE=1; # with 0 I get out of range errors
export FFTLEN=2048;

if test "$1" = "slt" -o \
        "$1" = "clb"; then
   export GENDER="female";
   export LOWERF0="80";
   export UPPERF0="350";
elif test "$1" = "bdl" -o \
        "$1" = "jmk" -o \
        "$1" = "awb" -o \
        "$1" = "mad" -o \
        "$1" = "rms" -o \
        "$1" = "ksp"; then
   export GENDER="male";
   export LOWERF0="77";
   export UPPERF0="227";
fi

if test "$1" = "awb"; then
   export DIALECT="scottish";
elif test "$1" = "ksp"; then
   export DIALECT="indian";
elif test "$1" = "mad"; then
   export DIALECT="indian";
elif test "$1" = "bdl" -o \
        "$1" = "slt" -o \
        "$1" = "jmk" -o \
        "$1" = "rms" -o \
        "$1" = "clb"; then
   export DIALECT="american";
fi
   export LOWERF0="77";
   export UPPERF0="227";
echo "arg 1 set = " $1
echo "speaker set = " ${SPEAKER}
echo "lower freq set = " ${LOWERF0}
echo "upper freq set = " ${UPPERF0}

