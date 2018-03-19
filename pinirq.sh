for D in $(ls /proc/irq | egrep -v eth0)
do
    if [[ -x "/proc/irq/$D" && $D != "0" ]]
    then
	echo "$D:$(cat /proc/irq/$D/smp_affinity)"
	#echo 1 > /proc/irq/$D/smp_affinity
    fi
done
