#! /bin/bash

shred -vfuzn5 $1/src/Counter.sol
shred -vfuzn5 $1/script/Counter.s.sol
shred -vfuzn5 $1/test/Counter.t.sol
