gpio mode 0 out
gpio mode 1 out
gpio mode 2 out
gpio mode 3 out
gpio mode 4 out
gpio mode 5 out

while (true)
do
sleep 0.1      
        gpio write 0 1
        gpio write 4 0
sleep 0.1
        gpio write 5 0
        gpio write 1 1
sleep 0.1
        gpio write 0 0
        gpio write 2 1
sleep 0.1
        gpio write 1 0
        gpio write 3 1
sleep 0.1
        gpio write 2 0
        gpio write 4 1
sleep 0.1
        gpio write 5 1
        gpio write 3 0
        


done













done