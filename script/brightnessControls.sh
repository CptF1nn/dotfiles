#!/bin/zsh
bright=/sys/class/backlight/intel_backlight

current=`cat $bright/brightness`
max=`cat $bright/max_brightness`

case $1 in
	up)
		new=$(($current+10000))
		if [ $new -le $max ]; then
			echo $new > $bright/brightness
		fi
		;;
	max)
		echo $(($max-1)) > $bright/brightness
		;;
	min)
		echo 10000 > $bright/brightness
		;;
	down)
		new=$(($current-10000))
		if [ $new -ge "0" ]; then
			echo $new > $bright/brightness
		fi
		;;
esac

