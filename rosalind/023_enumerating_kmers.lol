OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
TLDR
HAI 1.3
  
  BTW =================================== VARS ===========================================
  BTW this is a NOOB type object to find if uninitialized array
  I HAS A noob
  
  I HAS A SPACES ITZ " :>"
  
  
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
  
  
  HOW DUZ I IS_CHAR_IN_ARRAY YR char AN YR array
    I HAS A i ITZ 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF array
      BOTH SAEM char AN array!i, O RLY?
        YA RLY, FOUND YR WIN
      OIC
    IM OUTTA YR loop
    FOUND YR FAIL
  IF U SAY SO
  
  
  HOW DUZ I GETS_NXT_TOKEN line AN line_idx
    I HAS A yarn ITZ ""
    IM IN YR loop
      BOTH SAEM line_idx AN BIGGR OF line_idx AN LEN OF line, O RLY?
        YA RLY
          DIFFRINT 0 AN BIGGR OF 0 AN LEN OF yarn, O RLY?
            YA RLY
              I HAS A retarray ITZ GOT NOTHING
              retarray!0 R yarn, retarray!1 R line_idx
              FOUND YR retarray
            NO WAI
              FOUND YR noob
          OIC
      OIC
      IS_CHAR_IN_ARRAY line!line_idx AN SPACES, O RLY?
        YA RLY
          BTW space
          DIFFRINT 0 AN BIGGR OF LEN OF yarn AN 0, O RLY?
            YA RLY
              I HAS A retarray ITZ GOT NOTHING
              retarray!0 R yarn, retarray!1 R line_idx
              FOUND YR retarray
          OIC
        NO WAI
          BTW not space
          yarn R SMOOSH yarn line!line_idx MKAY
      OIC
      line_idx R SUM OF line_idx AN 1
    IM OUTTA YR loop
  IF U SAY SO
  
  
  BTW ============================== HELP FUNKTIONS ======================================
  HOW DUZ I ENUMERATE_KMERS YR prefix AN YR alphabet AN YR n
    BOTH SAEM 0 AN BIGGR OF 0 AN n, O RLY?
      YA RLY
        VISIBLE prefix
      NO WAI
        I HAS A i ITZ 0
        IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF alphabet
          I HAS A new_prefix ITZ SMOOSH prefix alphabet!i MKAY
          ENUMERATE_KMERS new_prefix AN alphabet AN DIFF OF n AN 1
        IM OUTTA YR LOOP
    OIC
  IF U SAY SO
  
  
  BTW =================================== MAIN ===========================================
  
  CAN HAS STDIO?
  BTW get data
  I HAS A alphabet_yarn, GIMMEH alphabet_yarn
  alphabet_yarn IS NOW A YARN
  I HAS A n, GIMMEH n
  n IS NOW A NUMBR
  
  BTW parse arguments
  I HAS A idx ITZ 0
  I HAS A alphabet ITZ GOT NOTHING
  IM IN YR loop
    I HAS A token ITZ GETS_NXT_TOKEN alphabet_yarn AN idx
    BOTH SAEM token AN noob, O RLY?
      YA RLY, GTFO
    OIC
    I HAS A temp ITZ LEN OF alphabet
    alphabet!temp R token!0
    idx R token!1
  IM OUTTA YR loop
  
  ENUMERATE_KMERS "" AN alphabet AN n
  
KTHXBYE

