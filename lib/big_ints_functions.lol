OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
TLDR

HAI 1.3  
  
  BTW =================================== VARS ===========================================
  BTW this is a NOOB type object to find if uninitialized array
  I HAS A noob
  
  
  BTW ====================================================================================
  HOW DUZ I SHIFT_BUKKIT_RIGHT YR array AN YR shift AN YR insert_val
    I HAS A new_bukkit ITZ GOT NOTHING
    I HAS A i ITZ 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN shift
      new_bukkit!i R insert_val
    IM OUTTA YR loop
    i R 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF array 
      I HAS A j ITZ SUM OF i AN shift
      new_bukkit!j R array!i
    IM OUTTA YR loop
    FOUND YR new_bukkit
  IF U SAY SO
  
  
  BTW ========================== HELP FUNKTIONS BIG INTS =================================
  OBTW
  big ints are arrays of NUMBRs with the smallest digit at position 0
  currently, we only support positive integers
  TLDR
  
  I HAS A BIG_NUMBR_MOD ITZ 10
  
  BTW create a new big integer with the given small integer value
  HOW DUZ I INIT_BIG_NUMBR YR small_int
    I HAS A big_int ITZ GOT NOTHING
    BOTH SAEM small_int AN 0, O RLY?
      YA RLY
        big_int!0 R 0
        FOUND YR big_int
    OIC
    I HAS A i ITZ 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT 0 AN BIGGR OF small_int AN 0
      big_int!i R MOD OF small_int AN BIG_NUMBR_MOD
      small_int R QUOSHUNT OF small_int AN BIG_NUMBR_MOD
      small_int IS NOW A NUMBR
    IM OUTTA YR loop
    FOUND YR big_int
  IF U SAY SO
  
  BTW check if 2 big ints are equal
  HOW DUZ I CHECK_EQUALS YR x AN YR y
    I HAS A max_len ITZ BIGGR OF LEN OF x AN LEN OF y
    I HAS A i ITZ 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN max_len
      I HAS A xi ITZ 0, I HAS A yi ITZ 0
      DIFFRINT x!i AN noob, O RLY? 
        YA RLY, xi R x!i
      OIC
      DIFFRINT y!i AN noob, O RLY? 
        YA RLY, yi R y!i
      OIC
      DIFFRINT xi AN yi, O RLY?
        YA RLY, FOUND YR FAIL
      OIC
    IM OUTTA YR loop
    FOUND YR WIN
  IF U SAY SO
  
  BTW add 2 big integers
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
      carry R QUOSHUNT OF smallsum AN BIG_NUMBR_MOD 
      carry IS NOW A NUMBR
    IM OUTTA YR loop
    DIFFRINT 0 AN BIGGR OF carry AN 0, O RLY?
      YA RLY?
        sum!max_len R carry
    OIC
    FOUND YR sum
  IF U SAY SO
  
  BTW multiply a big integer with a digit (size of a bin)
  HOW DUZ I TIMES_BIG_NUMBR_AN_DIGIT YR big_int AN YR digit
    I HAS A result ITZ INIT_BIG_NUMBR 0
    I HAS A carry ITZ 0
    I HAS A i ITZ 0
    BTW multiplication
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF big_int
      I HAS A temp ITZ PRODUKT OF big_int!i AN digit
      temp R SUM OF temp AN carry
      result!i R MOD OF temp AN BIG_NUMBR_MOD
      carry R QUOSHUNT OF temp AN BIG_NUMBR_MOD
      carry IS NOW A NUMBR
    IM OUTTA YR loop
    BTW leftover carry
    i R LEN OF big_int
    IM IN YR loop UPPIN YR i WILE DIFFRINT 0 AN BIGGR OF 0 AN carry
      result!i R MOD OF carry AN BIG_NUMBR_MOD
      carry R QUOSHUNT OF carry AN BIG_NUMBR_MOD
      carry IS NOW A NUMBR
    IM OUTTA YR loop
    FOUND YR result
  IF U SAY SO
  
  BTW multiply 2 big integers
  HOW DUZ I TIMES_BIG_NUMBRZ YR x AN YR y
    I HAS A result ITZ INIT_BIG_NUMBR 0
    I HAS A i ITZ 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF y
      I HAS A temp ITZ TIMES_BIG_NUMBR_AN_DIGIT x AN y!i
      temp R SHIFT_BUKKIT_RIGHT temp AN i AN 0
      result R ADDS_BIG_NUMBRZ result AN temp
    IM OUTTA YR loop
    FOUND YR result
  IF U SAY SO
  
  BTW print a big integer in the correct direction
  HOW DUZ I PRINTZ_BIG_NUMBR YR bignumbr
    I HAS A i ITZ DIFF OF LEN OF bignumbr AN 1
    IM IN YR loop NERFIN YR i WILE BOTH SAEM 0 AN SMALLR OF i AN 0
      DIFFRINT bignumbr!i AN noob, O RLY?
        YA RLY, VISIBLE bignumbr!i!
      OIC
    IM OUTTA YR loop
    VISIBLE ""
  IF U SAY SO
  
  
  BTW ======================== HELP FUNKTIONS BIG INT MATH ===============================
  BTW result is a big int, but n remains a normal int
  HOW DUZ I FAKTORAL_BIG_NUMBR YR n
    BOTH SAEM n AN 0, O RLY?
      YA RLY, FOUND YR INIT_BIG_NUMBR 1
      NO WAI
        I HAS A temp ITZ FAKTORAL_BIG_NUMBR DIFF OF n AN 1
        FOUND YR TIMES_BIG_NUMBRZ temp AN INIT_BIG_NUMBR n
    OIC
  IF U SAY SO
  
  
  BTW ====================================================================================
  I HAS A x ITZ INIT_BIG_NUMBR 2008
  I HAS A y ITZ INIT_BIG_NUMBR 93
  PRINTZ_BIG_NUMBR ADDS_BIG_NUMBRZ x AN y             BTW 2101
  PRINTZ_BIG_NUMBR TIMES_BIG_NUMBR_AN_DIGIT x AN 9    BTW 18072
  PRINTZ_BIG_NUMBR TIMES_BIG_NUMBRZ x AN y            BTW 186744
  
KTHXBYE

