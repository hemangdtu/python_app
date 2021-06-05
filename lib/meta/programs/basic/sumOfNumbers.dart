var sumOfNumbersMarkdown = '''
### Add Two Numbers
 
#### Program
```
# This program adds two numbers

num1 = 1.6
num2 = 2.9
sum = num1 + num2   # Add two numbers
print('The sum of ' + str(num1) + ' and '+ str(num2) + ' is ' + str(sum))   # Print Result

```
#### Output
```
The sum of 1.6 and 2.9 is 4.5

```
---
### Add Two Numbers With User Input
#### Program
```
# Store input numbers
num1 = input('Enter first number: ')
num2 = input('Enter second number: ')
sum = float(num1) + float(num2)     # Add two numbers
print('The sum of ' + str(num1) + ' and '+ str(num2) + ' is ' + str(sum))   # Print Result

```
#### Input
```
1.6
2.9

```
#### Output
```
Enter first number: 1.6
Enter second number: 2.9
The sum of 1.6 and 2.9 is 4.5

```
''';

String sumOfNumbersExplain = '''
In the first program we simply declared two variables and initialized some values to them. After that we used the `+` operator to add two numbers and stored the result in variable `sum` which later got printed with the help of the `print()`.
 
In the second program, we asked the user to enter two numbers and this program displays the sum of two numbers entered by user.

We use the built-in function `input()` to take the input. Since, `input()` returns a string, we convert the string into number using the `float()` function. Then, the numbers are added.
''';
