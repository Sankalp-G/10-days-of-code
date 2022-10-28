# Déjà Vu

#### [Link to problem](https://codeforces.com/problemset/problem/1504/A)

<hr>

#### [Link to github repository](https://github.com/Sankalp-G/10-days-of-code/)

<hr>

This is written in ruby as well as c++ since initially my algorithm tried to insert an 'a' by looping through the string as seen in commit [4b81ad8](https://github.com/Sankalp-G/10-days-of-code/blob/4b81ad87acc76f9d36b8d9f0ef64fb33e69c29c9/day2/dejavu.rb), which didn't work in ruby due to the time limit so I tried implementing the same in c++ since it would be much faster, but that failed the test case as well.

It was then I found that you can break a palindrome just by appending or prepending which is efficient enough to work in both ruby and c++