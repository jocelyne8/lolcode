OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
TLDR
HAI 1.3
  
  BTW =================================== VARS ===========================================
  BTW this is a NOOB type object to find if uninitialized array
  I HAS A noob
  
  I HAS A DIGITS ITZ "0123456789"
  
  
  BTW ======================== HELP FUNKTIONS READ NUMBRS ================================
  HOW DUZ I IS_CHAR_DIGIT YR char
    I HAS A i ITZ 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF DIGITS
      BOTH SAEM char AN DIGITS!i, O RLY?
        YA RLY, FOUND YR WIN
      OIC
    IM OUTTA YR loop
    FOUND YR FAIL
  IF U SAY SO
  
  
  HOW DUZ I GETS_NXT_NUMBR line AN line_idx
    I HAS A yarn ITZ ""
    IM IN YR loop
      BOTH SAEM line_idx AN BIGGR OF line_idx AN LEN OF line, O RLY?
        YA RLY
          DIFFRINT 0 AN BIGGR OF 0 AN LEN OF yarn, O RLY?
            YA RLY
              yarn IS NOW A NUMBR
              I HAS A retarray ITZ GOT NOTHING
              retarray!0 R yarn, retarray!1 R line_idx
              FOUND YR retarray
            NO WAI
              FOUND YR noob
          OIC
      OIC
      IS_CHAR_DIGIT line!line_idx, O RLY?
        YA RLY
          BTW numbr
          yarn R SMOOSH yarn line!line_idx MKAY
        NO WAI
          BTW not numbr
          DIFFRINT 0 AN BIGGR OF LEN OF yarn AN 0, O RLY?
            YA RLY
              yarn IS NOW A NUMBR
              I HAS A retarray ITZ GOT NOTHING
              retarray!0 R yarn, retarray!1 R line_idx
              FOUND YR retarray
          OIC
      OIC
      line_idx R SUM OF line_idx AN 1
    IM OUTTA YR loop
  IF U SAY SO
  
  
  BTW ============================ HELP FUNKTIONS YARNS ==================================
  BTW itz a funksion
  HOW DUZ I FINDCHAR YR yarn AN YR char AN YR index
    I HAS A i ITZ index, i IS NOW A NUMBR
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF yarn
      BOTH SAEM yarn!i AN char, O RLY?
        YA RLY, FOUND YR i
      OIC
    IM OUTTA YR loop
    FOUND YR -1
  IF U SAY SO
  
  
  HOW DUZ I SUBYARN YR string AN YR index AN YR len
    I HAS A substr ITZ "", substr IS NOW A YARN
    len R SMALLR OF len AN DIFF OF LEN OF string AN index
    I HAS A i ITZ 0, i IS NOW A NUMBR
    IM IN YR subyarn_loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN len 
      I HAS A k ITZ SUM OF index AN i
      substr R SMOOSH substr string!k MKAY
    IM OUTTA YR subyarn_loop
    FOUND YR substr
  IF U SAY SO
  
  
  BTW ============================== HELP FUNKTIONS ======================================
  HOW DUZ I EXPEKT_KIDZ YR args_array
    I HAS A AA_AA ITZ args_array!0
    I HAS A AA_Aa ITZ args_array!1
    I HAS A AA_aa ITZ args_array!2
    I HAS A Aa_Aa ITZ args_array!3
    I HAS A Aa_aa ITZ args_array!4
    I HAS A aa_aa ITZ args_array!5
    
    I HAS A expected ITZ 0.0, expected IS NOW A NUMBAR
    
    expected R SUM OF expected AN PRODUKT OF AA_AA AN 2.0
    expected R SUM OF expected AN PRODUKT OF AA_Aa AN 2.0
    expected R SUM OF expected AN PRODUKT OF AA_aa AN 2.0
    expected R SUM OF expected AN PRODUKT OF Aa_Aa AN 1.5
    expected R SUM OF expected AN PRODUKT OF Aa_aa AN 1.0
    
    FOUND YR expected
  IF U SAY SO
  
  
  BTW =================================== MAIN ===========================================
  CAN HAS STDIO?
  I HAS A args_line, GIMMEH args_line
  args_line IS NOW A YARN
  
  BTW parse arguments
  I HAS A idx ITZ 0
  I HAS A args ITZ GOT NOTHING
  IM IN YR loop
    I HAS A nextnum ITZ GETS_NXT_NUMBR args_line AN idx
    BOTH SAEM nextnum AN noob, O RLY?
      YA RLY, GTFO
    OIC
    I HAS A temp ITZ LEN OF args
    args!temp R nextnum!0
    idx R nextnum!1
  IM OUTTA YR loop
  
  VISIBLE args
  VISIBLE ""
  VISIBLE EXPEKT_KIDZ args
  VISIBLE ""
  
  
KTHXBYE

