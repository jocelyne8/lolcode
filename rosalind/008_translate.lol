OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
TLDR
HAI 1.3

  BTW itz a funksion too tranzlaaate
  HOW DUZ I GETZ_AA YR codon
    codon, WTF?
      OMG "UUU", OMG "UUC"
        FOUND YR "F"
      OMG "UUA", OMG "UUG"
      OMG "CUU", OMG "CUC"
      OMG "CUA", OMG "CUG"
        FOUND YR "L"
      OMG "UCU", OMG "UCC"
      OMG "UCA", OMG "UCG"
      OMG "AGU", OMG "AGC"
        FOUND YR "S"
      OMG "UAU", OMG "UAC"
        FOUND YR "Y"
      OMG "UAA", OMG "UAG", OMG "UGA"
        FOUND YR "STOP"
      OMG "UGU", OMG "UGC"
        FOUND YR "C"
      OMG "UGG"
      	FOUND YR "W"
      OMG "CCU", OMG "CCC"
      OMG "CCA", OMG "CCG"
        FOUND YR "P"
      OMG "CAU", OMG "CAC"
        FOUND YR "H"
      OMG "CAA", OMG "CAG"
        FOUND YR "Q"
      OMG "CGU", OMG "CGC"
      OMG "CGA", OMG "CGG"
      OMG "AGA", OMG "AGG"
        FOUND YR "R"
      OMG "AUU", OMG "AUC", OMG "AUA"
        FOUND YR "I"
      OMG "AUG"
        FOUND YR "M"
      OMG "ACU", OMG "ACC"
      OMG "ACA", OMG "ACG"
        FOUND YR "T"
      OMG "AAU", OMG "AAC"
        FOUND YR "N"
      OMG "AAA", OMG "AAG"
        FOUND YR "K"
      OMG "GUU", OMG "GUC"
      OMG "GUA", OMG "GUG"
        FOUND YR "V"
      OMG "GCU", OMG "GCC"
      OMG "GCA", OMG "GCG"
        FOUND YR "A"
      OMG "GAU", OMG "GAC"
        FOUND YR "D"
      OMG "GAA", OMG "GAG"
        FOUND YR "E"
      OMG "GGU", OMG "GGC"
      OMG "GGA", OMG "GGG"
        FOUND YR "G"
    OIC
    FOUND YR ""
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
  I HAS A string
  GIMMEH string
  string IS NOW A YARN
  I HAS A aa_yarn ITZ ""
  aa_yarn IS NOW A YARN
  I HAS A i ITZ 0, i IS NOW A NUMBR
  IM IN YR loop UPPIN YR i WILE BOTH SAEM LEN OF string AN BIGGR OF LEN OF string AN PRODUKT OF i AN 3 
    I HAS A j ITZ PRODUKT OF i AN 3
    I HAS A codon ITZ SUBYARN string AN j AN 3
    I HAS A aa ITZ GETZ_AA codon
    BOTH SAEM aa AN "STOP"
    O RLY?
      YA RLY
        GTFO
    OIC
    aa_yarn R SMOOSH aa_yarn aa MKAY
  IM OUTTA YR loop
  VISIBLE aa_yarn
KTHXBYE 


