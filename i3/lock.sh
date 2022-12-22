#!/bin/bash

# 1. Take screenshot with scrot and store to temporary location
# 2. Apply a blurring Gaussian filter with convert
# 3. Lock the screen with the resulting picture

TMPSNP=/tmp/lockscreen.png

scrot $TMPSNP
convert $TMPSNP -filter Gaussian -thumbnail 20% -sample 500% $TMPSNP

i3lock -i $TMPSNP
