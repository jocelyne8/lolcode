OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
TLDR
HAI 1.3

  BTW I haz a funksion
  HOW DUZ I IZMATCH YR string AN YR substring AN YR index
    BTW check that len(substring) <= len(string) - index
    DIFFRINT LEN OF substring AN SMALLR OF LEN OF substring AN DIFF OF LEN OF string AN index
    O RLY?
      YA RLY
        FOUND YR FAIL
    OIC
    I HAS A i ITZ 0, i IS NOW A NUMBR
    IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN LEN OF substring
      I HAS A j ITZ SUM OF i AN index
      DIFFRINT string!j AN substring!i
      O RLY?
        YA RLY
          FOUND YR FAIL
      OIC
    IM OUTTA YR loop
    FOUND YR WIN
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
  
  
  CAN HAS STDIO?
  I HAS A s, I HAS A t
  GIMMEH s, GIMMEH t
  s IS NOW A YARN, t IS NOW A YARN
  I HAS A pos_yarn ITZ ""
  pos_yarn IS NOW A YARN
  I HAS A i ITZ 0, i IS NOW A NUMBR
  IM IN YR loop UPPIN YR i WILE BOTH SAEM i AN SMALLR OF i AN DIFF OF LEN OF s AN LEN OF t
    BTW I HAS A s_sub, s_sub IS NOW A YARN
    BTW s_sub R SUBYARN s AN i AN LEN OF t 
    BTW BOTH SAEM s_sub AN t
    IZMATCH s AN t AN i
    O RLY?
      YA RLY
        pos_yarn R SMOOSH pos_yarn " " SUM OF i AN 1 MKAY
    OIC
  IM OUTTA YR loop
  VISIBLE pos_yarn
KTHXBYE 


