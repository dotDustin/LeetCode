# Leet Code Problems and Solutions

## Current Contents

### [Palindrome Number](https://leetcode.com/problems/palindrome-number/)

Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.

**Example 1:**

```
Input: 121
Output: true
```

### [Interger to Roman](https://leetcode.com/problems/integer-to-roman/)

Given an integer, convert it to a roman numeral. Input is guaranteed to be within the range from 1 to 3999.

**Example 5:**

```
Input: 1994
Output: "MCMXCIV"
Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
```

### [Valid Palindrome](https://leetcode.com/problems/valid-palindrome/)

Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

**Example 1:**

```
Input: "A man, a plan, a canal: Panama"
Output: true
```

### [Reverse Words in a String](https://leetcode.com/problems/reverse-words-in-a-string/)

Given an input string, reverse the string word by word. A word is defined as a sequence of non-space characters. Input string may contain leading or trailing spaces. However, reversed string should not contain leading or trailing spaces.

**Example 2:**

```
Input: "  hello world!  "
Output: "world! hello"
Explanation: Your reversed string should not contain leading or trailing spaces.
```

### [Contains Duplicate](https://leetcode.com/problems/contains-duplicate/)

Given an array of integers, find if the array contains any duplicates.

Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

**Example 3:**

```
Input: [1,1,1,3,3,4,3,2,4,2]
Output: true
```

### [Interger to English Words](https://leetcode.com/problems/integer-to-english-words/)

​	Convert a non-negative integer to its english words representation. Given input is guaranteed to be less than 2^31 - 1.

**Example 4:**

```
Input: 1234567891
Output: "One Billion Two Hundred Thirty Four Million Five Hundred Sixty Seven Thousand Eight Hundred Ninety One"
```

### [Find All Duplicates in an Array](https://leetcode.com/problems/find-all-duplicates-in-an-array/)

Given an array of integers, 1 ≤ a[i] ≤ *n* (*n* = size of array), some elements appear **twice** and others appear **once**.

Find all the elements that appear **twice** in this array.

**Example:**

```
Input:
[4,3,2,7,8,2,3,1]

Output:
[2,3]
```

### [Number of Segments in a String](https://leetcode.com/problems/number-of-segments-in-a-string/)

Count the number of segments in a string, where a segment is defined to be a contiguous sequence of non-space characters.

Please note that the string does not contain any **non-printable** characters.

**Example:**

```
Input: "Hello, my name is John"
Output: 5
```

### [Max Consecutive Ones](https://leetcode.com/problems/max-consecutive-ones/)

Given a binary array, find the maximum number of consecutive 1s in this array.

**Example 1:**

```
Input: [1,1,0,1,1,1]
Output: 3
Explanation: The first two digits or the last three digits are consecutive 1s.
    The maximum number of consecutive 1s is 3.
```

### [Detect Capital](https://leetcode.com/problems/detect-capital/)

Given a word, you need to judge whether the usage of capitals in it is right or not.

We define the usage of capitals in a word to be right when one of the following cases holds:

1. All letters in this word are capitals, like "USA".
2. All letters in this word are not capitals, like "leetcode".
3. Only the first letter in this word is capital, like "Google".

Otherwise, we define that this word doesn't use capitals in a right way.

**Example 2:**

```
Input: "FlaG"
Output: False
```

### [Jewels and Stones](https://leetcode.com/problems/jewels-and-stones/) 

You're given strings `J` representing the types of stones that are jewels, and `S` representing the stones you have. Each character in `S` is a type of stone you have. You want to know how many of the stones you have are also jewels.

The letters in `J` are guaranteed distinct, and all characters in `J` and `S` are letters. Letters are case sensitive, so `"a"` is considered a different type of stone from `"A"`.

**Example 1:**

```
Input: J = "aA", S = "aAAbbbb"
Output: 3
```

### [Rotate String](https://leetcode.com/problems/rotate-string/)

We are given two strings, `A` and `B`.

A *shift on `A`* consists of taking string `A` and moving the leftmost character to the rightmost position. For example, if `A = 'abcde'`, then it will be `'bcdea'` after one shift on `A`. Return `True` if and only if `A` can become `B` after some number of shifts on `A`.

```
Example 1:
Input: A = 'abcde', B = 'cdeab'
Output: true
```

### [Flipping an Image](https://leetcode.com/problems/flipping-an-image/)

Given a binary matrix `A`, we want to flip the image horizontally, then invert it, and return the resulting image.

To flip an image horizontally means that each row of the image is reversed. For example, flipping `[1, 1, 0]` horizontally results in `[0, 1, 1]`.

To invert an image means that each `0` is replaced by `1`, and each `1` is replaced by `0`. For example, inverting `[0, 1, 1]` results in `[1, 0, 0]`.

**Example 1:**

```
Input: [[1,1,0],[1,0,1],[0,0,0]]
Output: [[1,0,0],[0,1,0],[1,1,1]]
Explanation: First reverse each row: [[0,1,1],[1,0,1],[0,0,0]].
Then, invert the image: [[1,0,0],[0,1,0],[1,1,1]]
```

### [Backspace String Compare](https://leetcode.com/problems/backspace-string-compare/)

Given two strings `S` and `T`, return if they are equal when both are typed into empty text editors. `#` means a backspace character.

Note that after backspacing an empty text, the text will continue empty.

**Example 3:**

```
Input: S = "a##c", T = "#a#c"
Output: true
Explanation: Both S and T become "c".
```

### [Reverse Interger](https://leetcode.com/problems/reverse-integer/) 

Given a 32-bit signed integer, reverse digits of an integer.

**Note:**
Assume we are dealing with an environment that could only store integers within the 32-bit signed integer range: [−231, 231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.

**Example 2:**

```
Input: x = -123
Output: -321
```

**Example 3:**

```
Input: x = 120
Output: 21
```

### Make Seconds into Readable String

Given an interger of seconds between 0 and 86,399, convert it into a readable string of hours minutes and seconds: XXhXXmXXs.

**Example:**

```
Input: x = 7865
Output: "2h11m5s"
```
