OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
TLDR
HAI 1.3

  BTW itz a funksion too tranzlaaate
  HOW DUZ I GETZ_AA YR codon
    codon, WTF?
      OMG "TTT", OMG "TTC"
        FOUND YR "F"
      OMG "TTA", OMG "TTG"
      OMG "CTT", OMG "CTC"
      OMG "CTA", OMG "CTG"
        FOUND YR "L"
      OMG "TCT", OMG "TCC"
      OMG "TCA", OMG "TCG"
      OMG "AGT", OMG "AGC"
        FOUND YR "S"
      OMG "TAT", OMG "TAC"
        FOUND YR "Y"
      OMG "TAA", OMG "TAG", OMG "TGA"
        FOUND YR "STOP"
      OMG "TGT", OMG "TGC"
        FOUND YR "C"
      OMG "TGG"
        FOUND YR "W"
      OMG "CCT", OMG "CCC"
      OMG "CCA", OMG "CCG"
        FOUND YR "P"
      OMG "CAT", OMG "CAC"
        FOUND YR "H"
      OMG "CAA", OMG "CAG"
        FOUND YR "Q"
      OMG "CGT", OMG "CGC"
      OMG "CGA", OMG "CGG"
      OMG "AGA", OMG "AGG"
        FOUND YR "R"
      OMG "ATT", OMG "ATC", OMG "ATA"
        FOUND YR "I"
      OMG "ATG"
        FOUND YR "M"
      OMG "ACT", OMG "ACC"
      OMG "ACA", OMG "ACG"
        FOUND YR "T"
      OMG "AAT", OMG "AAC"
        FOUND YR "N"
      OMG "AAA", OMG "AAG"
        FOUND YR "K"
      OMG "GTT", OMG "GTC"
      OMG "GTA", OMG "GTG"
        FOUND YR "V"
      OMG "GCT", OMG "GCC"
      OMG "GCA", OMG "GCG"
        FOUND YR "A"
      OMG "GAT", OMG "GAC"
        FOUND YR "D"
      OMG "GAA", OMG "GAG"
        FOUND YR "E"
      OMG "GGT", OMG "GGC"
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
  
  
  HOW DUZ I REVCOMPL YR dna
    I HAS A revcompl ITZ ""
    revcompl IS NOW A YARN
    I HAS A i ITZ 0, i IS NOW A NUMBR
    BTW go through string
    IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN LEN OF dna
      I HAS A char ITZ dna!i
      char, WTF?
        OMG "A"
        OMG "a"
          revcompl R SMOOSH "T" AN revcompl
          GTFO
        OMG "C"
        OMG "c"
          revcompl R SMOOSH "G" AN revcompl
          GTFO
        OMG "G"
        OMG "g"
          revcompl R SMOOSH "C" AN revcompl
          GTFO
        OMG "T"
        OMG "t"
          revcompl R SMOOSH "A" AN revcompl
          GTFO
      OIC
    IM OUTTA YR loop
    FOUND YR revcompl
  IF U SAY SO
  
  
  HOW DUZ I PRINTZ_ORF YR dna
    I HAS A i ITZ 0, i IS NOW A NUMBR
    IM IN YR loop UPPIN YR i WILE DIFFRINT LEN OF dna AN SMALLR OF LEN OF dna AN PRODUKT OF i AN 3
      I HAS A codon ITZ SUBYARN dna AN PRODUKT OF i AN 3 AN 3
      I HAS A aa ITZ GETZ_AA codon
      BOTH SAEM aa AN "M"
      O RLY?
        YA RLY
          BTW itz start codon
          I HAS A aa_yarn ITZ "", aa_yarn IS NOW A YARN
          I HAS A j ITZ i, j IS NOW A NUMBR
          IM IN YR inner_loop UPPIN YR j WILE DIFFRINT LEN OF dna AN SMALLR OF LEN OF dna AN PRODUKT OF j AN 3
            I HAS A inner_codon ITZ SUBYARN dna AN PRODUKT OF j AN 3 AN 3
            I HAS A inner_aa ITZ GETZ_AA inner_codon
            BOTH SAEM inner_aa AN "STOP"
            O RLY?
              YA RLY
                BTW we founds endz
                VISIBLE aa_yarn
                GTFO
              NO WAI
                aa_yarn R SMOOSH aa_yarn inner_aa MKAY
            OIC
          IM OUTTA YR inner_loop
      OIC
    IM OUTTA YR loop
  IF U SAY SO
  
  
  CAN HAS STDIO?
  I HAS A dna_string, GIMMEH dna_string
  dna_string IS NOW A YARN
  
  BTW this strand 
  I HAS A i ITZ 0, i IS NOW A NUMBR
  IM IN YR loop UPPIN YR i WILE DIFFRINT 3 AN SMALLR OF i AN 3
    PRINTZ_ORF SUBYARN dna_string i AN DIFF OF LEN OF dna_string AN i
  IM OUTTA YR loop
  
  BTW the other strand
  I HAS A revcompl ITZ REVCOMPL dna_string
  i R 0
  IM IN YR loop UPPIN YR i WILE DIFFRINT 3 AN SMALLR OF i AN 3
    PRINTZ_ORF SUBYARN revcompl i AN DIFF OF LEN OF revcompl AN i
  IM OUTTA YR loop
  
KTHXBYE 


