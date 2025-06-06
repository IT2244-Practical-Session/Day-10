Question:Get the user input for three numbers (a,b,c).Calculate the LCM(Least Common Multiple) for first two numbers(a,b) 
and calculate the GCD(Greatest Common Divisor) for last two numbers(b,c).

[2021ict10@fedora ~]$ touch quiz.sh
[2021ict10@fedora ~]$ vi quiz.sh

::get the user input for first number
echo "Enter the first number:"

::read and store first number
read a

::get the user input for second number
echo "Enter the second number:"

::read and store second number
read b

::get the user input for third number
echo "Enter the third number:"

::read and store third number
read c

::assign values of a and b to x and y for LCM calculation
x=$a
y=$b

::compare x and y to determine which one is greater to start the LCM calculation from
if [ $x -gt $y ]; then
          lcm=$x     ::if x is greater, set LCM to x
  else
            lcm=$y   ::if y is greater, set LCM to y
fi

::Loop to find the LCM
while true; do

::check if the current lcm value is divisible by both x and y
if [ $((lcm % x)) -eq 0 ] && [ $((lcm % y)) -eq 0 ]; then

::if it is divisible by both, print the LCM and exit the loop
echo "LCM of $x and $y is: $lcm"
break
fi

::if not, increment lcm by 1 and check again
lcm=$((lcm + 1))
done

::assign values of b and c to x and y for GCD calculation
x=$b
y=$c

::loop to find the GCD
while [ $y -ne 0 ]; do
temp=$y           ::Store the value of y temporarily
y=$((x%y))        ::Update y to the remainder when x is divided by y
x=$temp           ::Update x to the old value of y
done

::print the final GCD result
echo "GCD of $b and $c is:$x"
[2021ict10@fedora ~]$ chmod 777 quiz.sh
[2021ict10@fedora ~]$ ./quiz.sh
Output:
Enter the first number:
3
Enter the second number:
6
Enter the third number:
8
LCM of 3 and 6 is: 6
GCD of 6 and 8 is:2
