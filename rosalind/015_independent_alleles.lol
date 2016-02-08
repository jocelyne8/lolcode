OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
TLDR
HAI 1.3
  
  BTW =================================== VARS ===========================================
  BTW this is a NOOB type object to find if uninitialized array
  I HAS A noob
  
  
  BTW ============================ HELP FUNKTIONS MATH ===================================
  BTW I haz a funksion : fact(n)
  HOW DUZ I FAKTORAL YR n
    BOTH SAEM 0 AN n
    O RLY?
      YA RLY
        FOUND YR 1
      NO WAI
        FOUND YR PRODUKT OF n AN FAKTORAL DIFF OF n AN 1
    OIC
  IF U SAY SO
  
  BTW I haz a funksion : pow(x, n) where n >= 0 and n is an int
  HOW DUZ I POS_POWR YR x AN YR n
    BOTH SAEM 0 AN n
    O RLY?
      YA RLY
        FOUND YR 1
      NO WAI
        FOUND YR PRODUKT OF x AN POS_POWR x AN DIFF OF n AN 1
    OIC
  IF U SAY SO
  
  BTW I haz a funksion: choose (n, k)
  HOW DUZ I CHOOZ YR n AN YR k
    DIFFRINT k AN SMALLR OF n AN k
    O RLY?
      YA RLY
        FOUND YR 0
      NO WAI
        I HAS A val ITZ 0, val IS NOW A NUMBAR
        val R FAKTORAL DIFF OF n AN k
        val R PRODUKT OF val AN FAKTORAL k
        val R QUOSHUNT OF FAKTORAL n AN val
        FOUND YR val
    OIC
  IF U SAY SO
  
  
  BTW ============================ HELP FUNKTIONS STAT ===================================
  BTW P(X == x)
  HOW DUZ I BINOM_PDF YR x AN N AN YR p
    I HAS A prob ITZ 0.0, prob IS NOW A NUMBAR
    prob R POS_POWR DIFF OF 1.0 AN p AN DIFF OF N AN x
    prob R PRODUKT OF prob AN POS_POWR p AN x
    prob R PRODUKT OF prob AN CHOOZ N AN x
    FOUND YR prob
  IF U SAY SO
  
  BTW P(X >= x)
  HOW DUZ I BINOM_RIGHT_CDF YR x AN N AN YR p
    I HAS A cdf ITZ 0.0, cdf IS NOW A NUMBAR
    I HAS A i ITZ x
    IM IN YR loop UPPIN YR i WILE BOTH SAEM i AN SMALLR OF i AN N
      cdf R SUM OF cdf AN BINOM_PDF i AN N AN p
    IM OUTTA YR loop
    FOUND YR cdf
  IF U SAY SO
  
  
  BTW =================================== MAIN ===========================================
  CAN HAS STDIO?
  I HAS A k, GIMMEH k, k IS NOW A NUMBR
  I HAS A N, GIMMEH N, N IS NOW A NUMBR
  
  BTW P(Aa) = 1/2; P(Bb) = 1/2; P(AaBb) = 1/2 * 1/2 = 1/4 
  VISIBLE BINOM_RIGHT_CDF N AN POS_POWR 2 AN k AN 0.25 
  
KTHXBYE

