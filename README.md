# Day-10
6. 📐 LCM & GCD Calculator
📄 File: quiz.sh
📘 Description:
This script prompts the user to enter three numbers (a, b, and c):

Calculates the LCM (Least Common Multiple) of the first two numbers (a, b)

Calculates the GCD (Greatest Common Divisor) of the last two numbers (b, c)

🔢 Sample Run:
yaml
Copy
Edit
Enter the first number:
3
Enter the second number:
6
Enter the third number:
8
LCM of 3 and 6 is: 6
GCD of 6 and 8 is: 2
🔍 How it Works:
LCM Calculation:

Starts from the maximum of the two numbers.

Increments until a number divisible by both is found.

GCD Calculation:

Uses the Euclidean algorithm via remainder.

📎 Addendum: Script Files Summary
Script Name	Purpose
fibbonaci.sh	Print the first 10 Fibonacci numbers
fact.sh	Calculate factorial of a number
mul.sh	Print multiples of 3 up to 50
multable.sh	Generate multiplication table (1–12)
starpattern.sh	Print diamond shape using stars
quiz.sh	Calculate LCM of (a,b) and GCD of (b,c)
