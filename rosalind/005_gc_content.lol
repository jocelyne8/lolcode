OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
TLDR
HAI 1.3

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
  
  
  BTW line includes final new line
  HOW DUZ I GETLINE YR yarn AN YR index
    I HAS A j ITZ FINDCHAR yarn AN ":)" AN index, j IS NOW A NUMBR
    DIFFRINT j AN -1, O RLY?
      YA RLY
        BTW more lines
        FOUND YR SUBYARN yarn AN index AN SUM OF DIFF OF j AN index AN 1
      NO WAI
        BTW no more new lines
        DIFFRINT index AN BIGGR OF index AN LEN OF yarn
        O RLY?
          YA RLY
            BTW last line didn't end in new line
            FOUND YR SUBYARN yarn AN index AN DIFF OF LEN OF yarn AN index
          NO WAI
            FOUND YR ""
        OIC
    OIC
  IF U SAY SO
  
  
  CAN HAS STDIO?
  I HAS A full_fasta_file, GIMMEH full_fasta_file
  full_fasta_file IS NOW A YARN
  BTW initialize variables
  I HAS A highest_gc ITZ 0.0, highest_gc IS NOW A NUMBAR
  I HAS A highest_gc_header ITZ "", highest_gc_header IS NOW A YARN
  I HAS A curr_gc_tot ITZ 0, curr_gc_tot IS NOW A NUMBR
  I HAS A curr_tot ITZ 0, curr_tot IS NOW A NUMBR
  I HAS A curr_header ITZ "", curr_header IS NOW A YARN
  
  I HAS A i ITZ 0, i IS NOW A NUMBR
  IM IN YR loop
    BOTH SAEM i AN BIGGR OF i AN LEN OF full_fasta_file, O RLY?
      YA RLY
        GTFO
    OIC
    I HAS A line ITZ GETLINE full_fasta_file AN i
    BOTH SAEM line!0 AN ">", O RLY?
      YA RLY
        BTW header line
        I HAS A curr_gc, curr_gc IS NOW A NUMBAR
        curr_gc R QUOSHUNT OF curr_gc_tot AN curr_tot
        DIFFRINT highest_gc AN BIGGR OF curr_gc AN highest_gc, O RLY?
          YA RLY
            highest_gc R curr_gc
            highest_gc_header R curr_header
        OIC
        curr_gc_tot R 0, curr_tot R 0
        curr_header R SUBYARN line AN 1 AN DIFF OF LEN OF line AN 2
      NO WAI
        BTW dna
        I HAS A j ITZ 0, j IS NOW A NUMBR
        IM IN YR inner_loop UPPIN YR j WILE DIFFRINT j AN BIGGR OF j AN LEN OF line
          line!j, WTF?
            OMG "C", OMG "c", OMG "G", OMG "g"
              curr_gc_tot R SUM OF curr_gc_tot AN 1
            OMG "A", OMG "a", OMG "T", OMG "t"
              curr_tot R SUM OF curr_tot AN 1
          OIC
        IM OUTTA YR inner_loop
    OIC
    i R SUM OF i AN LEN OF line
  IM OUTTA YR loop
  
  BTW last record
  I HAS A curr_gc, curr_gc IS NOW A NUMBAR
  curr_gc R QUOSHUNT OF curr_gc_tot AN curr_tot
  DIFFRINT highest_gc AN BIGGR OF curr_gc AN highest_gc, O RLY?
    YA RLY
      highest_gc R curr_gc
      highest_gc_header R curr_header
  OIC
  
  BTW print results
  VISIBLE highest_gc_header
  VISIBLE PRODUKT OF highest_gc AN 100
  
KTHXBYE

