# AdventureOfCode2017

## DAY ONE
### Part 1
```
> ruby day_one/captcha_1.rb 91212129
SOLUTION: 9
```
### Part 2
```
> ruby day_one/captcha_2.rb 12131415
SOLUTION 4
```

## DAY TWO
### Part 1
```
5 1 9 5
7 5 3
2 4 6 8
```
```
> ruby day_two/checksum_1.rb '5,1,9,5;7,5,3;2,4,6,8'
CHECKSUM: 18
```
### Part 2
```
5 9 2 8
9 4 7 3
3 8 6 5
```
```
> ruby day_two/checksum_2.rb '5,9,2,8;9,4,7,3;3,8,6,5'
CHECKSUM: 9
```

## DAY THREE
### Part 1
```
> ruby day_three/manhattan_distance.rb 1024
NUMBER OF STEPS: 31
```
### Part 2
```
> ruby day_three/greater_value.rb 800
FIRST GREATER VALUE: 806
```

## DAY FOUR
### Part 1
```
> ruby day_four/valid_passphrases_count_1.rb 'aa bb cc dd ee,aa bb cc dd aa,aa bb cc dd aaa'
TOTAL NUMBER OF PASSPHRASES: 3
NUMBER OF VALID PASSPHRASES: 2
```
### Part 2
```
> ruby day_four/valid_passphrases_count_2.rb 'abcde fghij,abcde xyz ecdab,a ab abc abd abf abj,iiii oiii ooii oooi oooo,oiii ioii iioi iiio'
TOTAL NUMBER OF PASSPHRASES: 5
NUMBER OF VALID PASSPHRASES: 3
```

## DAY FIVE
### Part 1
```
> ruby day_four/valid_passphrases_count_1.rb 'aa bb cc dd ee,aa bb cc dd aa,aa bb cc dd aaa'
TOTAL NUMBER OF PASSPHRASES: 3
NUMBER OF VALID PASSPHRASES: 2
```
### Part 2
```
> ruby day_five/escape_simple_maze.rb '0 3 0 1 -3'
NUMBER OF STEPS: 5
```

## DAY SIX
### Part 1
```
> ruby day_six/detect_infinite_loop_1.rb '0,2,7,0'
NUMBER OF CYCLES: 5
```
### Part 2
```
> ruby day_six/detect_infinite_loop_2.rb '0,2,7,0'
SIZE OF LOOP: 4
```

## DAY SEVEN
### Part 1
```
> ruby day_seven/bottom_program.rb "pbga (66);xhth (57);ebii (61);havc (66);ktlj (57);fwft (72) -> ktlj, cntj, xhth;qoyq (66);padx (45) -> pbga, havc, qoyq;tknk (41)
-> ugml, padx, fwft;jptl (61);ugml (68) -> gyxo, ebii, jptl;gyxo (61);cntj (57)"
BOTTOM PROGRAM: tknk
```
### Part 1
```
> ruby day_seven/unbalanced_program.rb "pbga (66);xhth (57);ebii (61);havc (66);ktlj (57);fwft (72) -> ktlj, cntj, xhth;qoyq (66);padx (45) -> pbga, havc, qoyq;tknk (41)
-> ugml, padx, fwft;jptl (61);ugml (68) -> gyxo, ebii, jptl;gyxo (61);cntj (57)"
PROGRAM ugml SHOULD WEIGHT 60.
```

## DAY EIGHT
### Part 1
```
> ruby day_eight/end_max_value.rb 'b inc 5 if a > 1;a inc 1 if b < 5;c dec -10 if a >= 1;c inc -20 if c == 10'
MAX VALUE: 1
```
### Part 2
```
> ruby day_eight/max_value_ever.rb 'b inc 5 if a > 1;a inc 1 if b < 5;c dec -10 if a >= 1;c inc -20 if c == 10'
MAX VALUE: 10
```
