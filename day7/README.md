https://adventofcode.com/2022/day/7

### linux tools commands

 - fallocate
 - ?truncate?
 - ?du?

### how to revert dir read out

on a line by line basis(?clean up script?)

- if no "$"
    - if dir
        - add "mk" befor dir
    - else
        - add "fallocate -l " befor the line
- remove all "$"
- remove all "ls"


### todo

- get verified good cleanup method/script
- create dir based on input
- get size of files in dir and add it together
(?how to represent result?/?or just shoot strait for the awnser?)
- make script to get solution for problem