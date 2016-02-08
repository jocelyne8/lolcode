OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
TLDR

HAI 1.3  
  
  BTW =================================== VARS ===========================================
  BTW this is a NOOB type object to find if uninitialized array
  I HAS A noob
  
  BTW ============================= COMPARE FUNKTIONS ====================================
  
  HOW DUZ I IS_LESS_THAN YR x AN YR y
    FOUND YR DIFFRINT x AN BIGGR OF x AN y
  IF U SAY SO 
  
  
  HOW DUZ I IS_GREATER_THAN YR x AN YR y
    FOUND YR DIFFRINT x AN SMALLR OF x AN y
  IF U SAY SO 
  
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
  
  OBTW this uses the pade approximation of order 5 to log(x/(x+1)) as taken from the 
  Mathematica tutorial: 
  http://reference.wolfram.com/mathematica/tutorial/PadeApproximation.html
  PadeApproximant(log(x/(x+1)), {x, 0, 5} ) = 
   -x - 2 x^2 - 47/36 x^3 - 11/36 x^4 - 137 / 7560 x^5
  ------------------------------------------------------
   1 + 5/2 x + 20/9 x^2 + 5/6 x^3 + 5/42 x^4 + 1/252 x^5
  
  TLDR
  
  
  
  
  
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
  
  
KTHXBYE

