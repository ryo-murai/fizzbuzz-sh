#!/bin/bash

. `dirname $0`/fizzbuzz.inc

range=`eval echo "{1..${1:-100}}"`
for i in $range; do pfizbuz $i; done
