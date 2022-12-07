#!/bin/bash
set -eou pipefail

#!/bin/bash

createfile(){
    fallocate -l $1 $2
}

mkdir removeme
cd removeme
mkdir a
createfile 14848514 b.txt
createfile 8504156 c.dat
mkdir d
cd a
mkdir e
createfile 29116 f
createfile 2557 g
createfile 62596 h.lst
cd e
createfile 584 i
cd ..
cd ..
cd d
createfile 4060174 j
createfile 8033020 d.log
createfile 5626152 d.ext
createfile 7214296 k