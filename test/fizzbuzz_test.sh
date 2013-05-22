#!/bin/sh

here=`dirname $0`
. ${here}/../main/fizzbuzz.inc

testFizz()
{
	expected=Fizz

	actual=`pfizbuz 3`
	assertEquals 'it should print fizz for 3' "$expected" "$actual"

	actual=`pfizbuz 6`
	assertEquals 'it should print fizz for 6' "$expected" "$actual"

	actual=`pfizbuz 9`
	assertEquals 'it should print fizz for 9' "$expected" "$actual"
}

testBuzz()
{
	expected=Buzz

	actual=`pfizbuz 5`
	assertEquals 'it should print Buzz for 5' "$expected" "$actual"

	actual=`pfizbuz 10`
	assertEquals 'it should print Buzz for 10' "$expected" "$actual"

	actual=`pfizbuz 20`
	assertEquals 'it should print Buzz for 20' "$expected" "$actual"
}

testFizzBuzz()
{
	expected=FizzBuzz

	actual=`pfizbuz 15`
	assertEquals 'it should print Buzz for 15' "$expected" "$actual"

	actual=`pfizbuz 30`
	assertEquals 'it should print Buzz for 30' "$expected" "$actual"

	actual=`pfizbuz 45`
	assertEquals 'it should print Buzz for 45' "$expected" "$actual"
}

testNumber()
{
	actual=`pfizbuz 1`
	assertEquals 'it should print 1' 1 "$actual"

	actual=`pfizbuz 2`
	assertEquals 'it should print 2' 2 "$actual"

	actual=`pfizbuz 4`
	assertEquals 'it should print 4' 4 "$actual"

}

.  ${here}/shunit2
