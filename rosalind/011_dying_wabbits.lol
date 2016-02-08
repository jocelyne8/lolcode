OBTW
This code was interpreted using loljs
http://asgaard.co.uk/misc/loljs/#
TLDR
HAI 1.3
  
  I HAS A noob
  
  OBTW
  big ints are arrays of NUMBRs with the smallest digit at position 0
  TLDR
  HOW DUZ I ADDS_BIG_NUMBRZ YR x AN YR y
    I HAS A sum ITZ GOT NOTHING
    I HAS A carry ITZ 0
    I HAS A i ITZ 0
    I HAS A max_len ITZ BIGGR OF LEN OF x AN LEN OF y
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN max_len
      I HAS A xi ITZ 0, I HAS A yi ITZ 0
      DIFFRINT x!i AN noob, O RLY? 
        YA RLY, xi R x!i
      OIC
      DIFFRINT y!i AN noob, O RLY? 
        YA RLY, yi R y!i
      OIC
      I HAS A smallsum ITZ SUM OF SUM OF xi AN yi AN carry
      sum!i R MOD OF smallsum AN 10
      carry R QUOSHUNT OF smallsum AN 10 
      carry IS NOW A NUMBR
    IM OUTTA YR loop
    DIFFRINT 0 AN BIGGR OF carry AN 0, O RLY?
      YA RLY?
        sum!max_len R carry
    OIC
    FOUND YR sum
  IF U SAY SO
  
  HOW DUZ I PRINTZ_BIG_NUMBR YR bignumbr
    I HAS A i ITZ DIFF OF LEN OF bignumbr AN 1
    IM IN YR loop NERFIN YR i WILE BOTH SAEM 0 AN SMALLR OF i AN 0
      DIFFRINT bignumbr!i AN noob, O RLY?
        YA RLY, VISIBLE bignumbr!i!
      OIC
    IM OUTTA YR loop
    VISIBLE ""
  IF U SAY SO
  
  BTW I haz a funksion
  HOW DUZ I wabbits YR n AN YR array
    BTW VISIBLE SMOOSH n ":  " array MKAY
    
    BTW more generations?
    BOTH SAEM 0 AN BIGGR OF n AN 0, O RLY?
      YA RLY
        FOUND YR noob 
    OIC
    
    BTW get the number of bunnies in the next generation
    I HAS A i ITZ 1
    I HAS A nextgen ITZ GOT NOTHING, nextgen!0 R 0
    BTW sum of generations 2 to m
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF array
      nextgen R ADDS_BIG_NUMBRZ nextgen AN array!i
    IM OUTTA YR loop
    
    BTW update the array, everyone ages, some die and we have new bunnies
    I HAS A j ITZ DIFF OF LEN OF array AN 1
    IM IN YR loop NERFIN YR j WILE DIFFRINT j AN SMALLR OF j AN 0
      i R DIFF OF j AN 1
      array!j R array!i
    IM OUTTA YR loop
    array!0 R nextgen
    
    BTW call a new generation
    wabbits DIFF OF n AN 1 AN array
  IF U SAY SO
 
  
  CAN HAS STDIO?
  I HAS A n, GIMMEH n, n IS NOW A NUMBR
  I HAS A m, GIMMEH m, m IS NOW A NUMBR
  
  BTW initialize array
  I HAS A array ITZ GOT NOTHING
  I HAS A i ITZ 0
  IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN m
    I HAS A new_array ITZ GOT NOTHING
    new_array!0 R 0
    array!i R new_array
  IM OUTTA YR loop
  array!0!0 R 1
  wabbits DIFF OF n AN 1 AN array
  
  I HAS A sum ITZ GOT NOTHING, sum!0 R 0
  i R 0
  IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN m
    sum R ADDS_BIG_NUMBRZ sum AN array!i
  IM OUTTA YR loop
  
  PRINTZ_BIG_NUMBR sum
KTHXBYE 




