# Number Reverser in Leo

This is a small yet significant step into the world of programming, specifically using the Leo programming language from the Aleo project. The project is focused on a simple task: reversing a number. 

## Description

This Leo program contains a single transition function named `reverse` that takes an `i128` integer as an input and returns the reversed integer as an output. Below is a detailed explanation of how the code works:

### Function Signature

```
program number_reverser.aleo {
    transition reverse(public num: i128) -> i128 {
        ...
    }
}
```

### Code Explanation

1. **Initializing Variables**

   ```
   let reversed: i128 = 0i128;
   let divider: i128 = 10i128;
   ```
   
   - `reversed`: A variable that will hold the reversed number.
   - `divider`: A variable set to 10, used to extract digits from the number.
   
2. **Handling Negative Numbers**

   ```
   if (num < 0i128) {
       divider = -10i128;
   }
   ```
   
   If the input number is negative, the `divider` is set to -10 to correctly handle the sign.
   
3. **Reversing the Number**

   ```
   for digitnum: i128 in 0i128..39i128 {
       if (num > 0i128) {
           let digit: i128 = num % divider;
           reversed = reversed * 10i128 + digit;
           num /= divider;
       }
   }
   ```
   
   - A loop runs to reverse the digits of the number.
   - Digits are extracted from the number and added to the `reversed` variable in reverse order.
   - The loop runs for a maximum of 39 iterations to handle the largest 128-bit integer.

4. **Return the Reversed Number**

   ```
   return reversed;
   ```
   
   The reversed number is returned as the output of the transition.

## Running the Program

Leo provides users with a command line interface for compiling and running Leo programs.
Users may either specify input values via the command line or provide an input file in `inputs/`.

### Providing inputs via the command line.
1. Run 
```bash
leo run reverse <number_to_reverse>
```

### Using an input file.
1. Modify `inputs/number_reverser.in` with the desired inputs.
2. Run
```bash
leo run reverse
```

## Resources

- Learn more about Leo programming language [here](https://developer.aleo.org/leo/language/).
- Check the Aleo project [GitHub repository](https://github.com/AleoHQ/leo).

## Postscript

Even though this is a fairly simple project, it's a practical way to get familiar with programming concepts and the Leo programming language. I hope you enjoyed reading this as much as I enjoyed writing it. Thank you for your time!
