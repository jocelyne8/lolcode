OBTW
This code was interpreted using loljs
http://asgaard.co.uk/misc/loljs/#
lci alternative in comments
TLDR
HAI 1.3
  
  
  BTW I haz a funksion
  HOW DUZ I FAKTORAL YR n
    BOTH SAEM 0 AN n
    O RLY?
      YA RLY
        FOUND YR 1
      NO WAI
        FOUND YR PRODUKT OF n AN FAKTORAL DIFF OF n AN 1
    OIC
  IF U SAY SO
  
  BTW I haz a funksion
  HOW DUZ I POWR YR k AN n
    BOTH SAEM 0 AN n
    O RLY?
      YA RLY
        FOUND YR 1
      NO WAI
        FOUND YR PRODUKT OF k AN POWR k AN DIFF OF n AN 1
    OIC
  IF U SAY SO
  
  
  BTW I haz a funksion
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
 
 
  BTW I haz a funksion
  BTW n <= 7 so using YARNS as BUKKITs
  HOW DUZ I PRINTZ_SINED_PERMS YR prev_yarn AN YR numbr_yarn
    BTW add spaaace if needed
    I HAS A pyarn ITZ prev_yarn, pyarn IS NOW A YARN
    DIFFRINT LEN OF pyarn AN 0, O RLY?
      YA RLY
        pyarn R SMOOSH pyarn " " MKAY
    OIC
    BTW if 0 or 1 item left, done.
    BOTH SAEM LEN OF numbr_yarn AN SMALLR OF LEN OF numbr_yarn AN 1
    O RLY?
      YA RLY
        BOTH SAEM LEN OF numbr_yarn AN 1
        O RLY?
          YA RLY
            VISIBLE SMOOSH pyarn numbr_yarn MKAY
            VISIBLE SMOOSH pyarn "-" numbr_yarn MKAY
        OIC
        FOUND YR ""
    OIC
    BTW fix first item, call recursively on rest
    I HAS A i ITZ 0, i IS NOW A NUMBR
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF numbr_yarn
      I HAS A s1 ITZ "", s1 IS NOW A YARN
      I HAS A s2 ITZ "", s2 IS NOW A YARN
      I HAS A len2 ITZ DIFF OF LEN OF numbr_yarn AN i
      len2 R DIFF OF len2 AN 1
      DIFFRINT 0 AN BIGGR OF 0 AN i, O RLY?
        YA RLY
          s1 R SUBYARN numbr_yarn AN 0 AN i
      OIC
      DIFFRINT 0 AN BIGGR OF 0 AN len2, O RLY?
        YA RLY
          s2 R SUBYARN numbr_yarn AN SUM OF i AN 1 AN len2
      OIC
      BTW recursive call
      I HAS A s ITZ SMOOSH s1 s2 MKAY
      PRINTZ_SINED_PERMS SMOOSH pyarn "-" numbr_yarn!i MKAY AN s
      PRINTZ_SINED_PERMS SMOOSH pyarn numbr_yarn!i MKAY AN s
    IM OUTTA YR loop
  IF U SAY SO
    
  
  CAN HAS STDIO?
  I HAS A n
  GIMMEH n
  n IS NOW A NUMBR
  BTW printz numbrs of perms
  VISIBLE PRODUKT OF FAKTORAL n AN POWR 2 AN n
  BTW create numbrs yarn
  I HAS A i ITZ 0, i IS NOW A NUMBR
  I HAS A numbr_yarn ITZ "", numbr_yarn IS NOW A YARN
  IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN n
    numbr_yarn R SMOOSH numbr_yarn AN SUM OF i AN 1 MKAY
  IM OUTTA YR loop
  PRINTZ_SINED_PERMS "" AN numbr_yarn
KTHXBYE 


