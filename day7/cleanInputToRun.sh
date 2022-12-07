#!/bin/bash
mkdir test;cd test
mkdir a
fallocate -l 14848514 b.txt
fallocate -l 8504156 c.dat
mkdir d
cd a
mkdir e
fallocate -l 29116 f
fallocate -l 2557 g
fallocate -l 62596 h.lst
cd e
fallocate -l 584 i
cd ..
cd ..
cd d
fallocate -l 4060174 j
fallocate -l 8033020 d.log
fallocate -l 5626152 d.ext
