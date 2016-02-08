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
  
  
  HOW DUZ I GET_CONSENSUS YR array
    BTW this is a NOOB type object to find if uninitialized array
    I HAS A noob
    BTW get max count per pos
    I HAS A max_ct ITZ GOT NOTHING
    I HAS A max_nt ITZ GOT NOTHING
    I HAS A i ITZ 0, i IS NOW A NUMBR
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF array
      I HAS A j ITZ 0, j IS NOW A NUMBR
      IM IN YR inner_loop UPPIN YR j WILE DIFFRINT j AN BIGGR OF j AN LEN OF array!i
      BOTH SAEM array!i!j AN noob, O RLY?
        YA RLY, array!i!j R 0
      OIC
      EITHER OF BOTH SAEM max_ct!j AN noob AN DIFFRINT max_ct!j AN BIGGR OF max_ct!j AN array!i!j
      O RLY?
        YA RLY
          max_ct!j R array!i!j
          max_nt!j R i
      OIC
      IM OUTTA YR inner_loop
    IM OUTTA YR loop
    BTW translate into nucleotides
    I HAS A consensus ITZ "", consensus IS NOW A YARN
    i R 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF max_nt
      max_nt!i, WTF?
        OMG 0
          consensus R SMOOSH consensus AN "A" MKAY
          GTFO
        OMG 1
          consensus R SMOOSH consensus AN "C" MKAY
          GTFO
        OMG 2
          consensus R SMOOSH consensus AN "G" MKAY
          GTFO
        OMG 3
          consensus R SMOOSH consensus AN "T" MKAY
          GTFO
        OMGWTF
          consensus R SMOOSH consensus AN "N" MKAY
          GTFO
       OIC
    IM OUTTA YR loop
    FOUND YR consensus
  IF U SAY SO
  
  
  BTW not nested array!
  HOW DUZ I ARRAY2YARN YR array YR delim
    I HAS A yarn ITZ "", yarn IS NOW A YARN
    I HAS A i ITZ 0, i IS NOW A NUMBR
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF array
      yarn R SMOOSH yarn array!i delim MKAY
    IM OUTTA YR loop
    DIFFRINT LEN OF yarn AN 0, O RLY?
      YA RLY, yarn R SUBYARN yarn AN 0 AN DIFF OF LEN OF yarn AN 1
    OIC
    FOUND YR yarn
  IF U SAY SO
  
  
  CAN HAS STDIO?
  I HAS A full_fasta_file, GIMMEH full_fasta_file
  full_fasta_file IS NOW A YARN
  BTW initialize variables
  BTW arrays of arrays for A C G T
  I HAS A array ITZ GOT NOTHING
  array!0 R GOT NOTHING
  array!1 R GOT NOTHING
  array!2 R GOT NOTHING
  array!3 R GOT NOTHING
  BTW this is a NOOB type object to find if uninitialized array
  I HAS A noob
  
  I HAS A fasta_idx ITZ 0, fasta_idx IS NOW A NUMBR
  I HAS A dna_idx ITZ 0, dna_idx IS NOW A NUMBR
  IM IN YR loop
    BOTH SAEM fasta_idx AN BIGGR OF fasta_idx AN LEN OF full_fasta_file, O RLY?
      YA RLY
        GTFO
    OIC
    I HAS A line ITZ GETLINE full_fasta_file AN fasta_idx
    BOTH SAEM line!0 AN ">", O RLY?
      YA RLY
        BTW header line
        dna_idx R 0
      NO WAI
        BTW dna
        I HAS A j ITZ 0, j IS NOW A NUMBR
        IM IN YR inner_loop UPPIN YR j WILE DIFFRINT j AN BIGGR OF j AN LEN OF line
          I HAS A nt_idx ITZ -1
          line!j, WTF?
            OMG "A", OMG "a"
              nt_idx R 0
              GTFO
            OMG "C", OMG "c"
              nt_idx R 1
              GTFO
            OMG "G", OMG "g"
              nt_idx R 2
              GTFO
            OMG "T", OMG "t"
              nt_idx R 3
              GTFO
          OIC
          DIFFRINT nt_idx AN -1, O RLY?
            YA RLY
              BOTH SAEM array!nt_idx!dna_idx AN noob, O RLY? AN 
                YA RLY
                  array!nt_idx!dna_idx R 0
              OIC
              array!nt_idx!dna_idx R SUM OF array!nt_idx!dna_idx AN 1
              dna_idx R SUM OF dna_idx AN 1
          OIC
        IM OUTTA YR inner_loop
    OIC
    fasta_idx R SUM OF fasta_idx AN LEN OF line
  IM OUTTA YR loop
  
  BTW fill undefined spots
  I HAS A max_len ITZ 0, max_len IS NOW A NUMBR
  I HAS A i ITZ 0, i IS NOW A NUMBR
  IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN 4
    DIFFRINT max_len AN BIGGR OF max_len AN LEN OF array!i, O RLY?
      YA RLY, max_len R LEN OF array!i
    OIC
  IM OUTTA YR loop
  i R 0
  IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN 4
    I HAS A j ITZ 0, j IS NOW A NUMBR
    IM IN YR inner_loop UPPIN YR j WILE DIFFRINT j AN BIGGR OF j AN max_len   
      BOTH SAEM array!i!j AN noob, O RLY? 
        YA RLY, array!i!j R 0
      OIC
    IM OUTTA YR inner_loop
  IM OUTTA YR loop
  
  BTW print results
  I HAS A consensus ITZ GET_CONSENSUS array
  VISIBLE consensus
  
  VISIBLE SMOOSH "A: " ARRAY2YARN array!0 AN " " MKAY
  VISIBLE SMOOSH "C: " ARRAY2YARN array!1 AN " " MKAY
  VISIBLE SMOOSH "G: " ARRAY2YARN array!2 AN " " MKAY
  VISIBLE SMOOSH "T: " ARRAY2YARN array!3 AN " " MKAY
  VISIBLE ""
  
KTHXBYE

