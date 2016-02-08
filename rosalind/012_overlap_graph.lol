OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
TLDR
HAI 1.3
  
  BTW this is a NOOB type object to find if uninitialized array
  I HAS A noob
  
  I HAS A K ITZ 3
  
  BTW I haz a funksion
  HOW DUZ I POS_POWR YR k AN YR n
    BOTH SAEM 0 AN n
    O RLY?
      YA RLY
        FOUND YR 1
      NO WAI
        FOUND YR PRODUKT OF k AN POS_POWR k AN DIFF OF n AN 1
    OIC
  IF U SAY SO
  
  
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
  
  
  BTW simple hash for DNA
  HOW DUZ I HASH_DNA YR dna
    I HAS A hash ITZ 0, hash IS NOW A NUMBR
    I HAS A i ITZ 0, i IS NOW A NUMBR
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF dna
      I HAS A nt_idx ITZ -1
      dna!i, WTF?
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
          hash R PRODUKT OF hash AN 4
          hash R SUM OF hash AN nt_idx
      OIC
    IM OUTTA YR loop
    FOUND YR hash
  IF U SAY SO
  
  
  HOW DUZ I PRINTZ_EDGES fasta_header AN prefix_array
    I HAS A i ITZ 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF prefix_array
      DIFFRINT fasta_header AN prefix_array!i, O RLY?
        YA RLY
          VISIBLE SMOOSH fasta_header " " prefix_array!i MKAY
      OIC
    IM OUTTA YR loop
  IF U SAY SO
  
  
  HOW DUZ I REEDZ_NXT_FASTA_ANTRY full_fasta_file AN fasta_idx
    I HAS A fasta_header ITZ "", fasta_header IS NOW A YARN
    I HAS A dna ITZ "", dna IS NOW A YARN
    IM IN YR loop
      BOTH SAEM fasta_idx AN BIGGR OF fasta_idx AN LEN OF full_fasta_file, O RLY?
        YA RLY
          I HAS A array ITZ GOT NOTHING
          array!0 R fasta_header
          array!1 R dna
          array!2 R fasta_idx
          FOUND YR array
      OIC
      I HAS A line ITZ GETLINE full_fasta_file AN fasta_idx
      BOTH SAEM line!0 AN ">", O RLY?
        YA RLY
          BTW header line
          DIFFRINT 0 AN BIGGR OF LEN OF fasta_header AN 0, O RLY?
            YA RLY
              I HAS A array ITZ GOT NOTHING
              array!0 R fasta_header
              array!1 R dna
              array!2 R fasta_idx
              FOUND YR array
          OIC
          fasta_header R SUBYARN line AN 1 AN DIFF OF LEN OF line AN 2
        NO WAI
          BTW dna
          I HAS A j ITZ 0
          IM IN YR inner_loop UPPIN YR j WILE DIFFRINT j AN BIGGR OF j AN LEN OF line
            line!j, WTF?
              OMG "A", OMG "C", OMG "G", OMG "T", OMG "N"
              OMG "a", OMG "c", OMG "g", OMG "t", OMG "n"
                dna R SMOOSH dna AN line!j MKAY
                GTFO
            OIC
          IM OUTTA YR inner_loop
      OIC
      fasta_idx R SUM OF fasta_idx AN LEN OF line
    IM OUTTA YR loop
  IF U SAY SO
  
  
  CAN HAS STDIO?
  I HAS A full_fasta_file, GIMMEH full_fasta_file
  full_fasta_file IS NOW A YARN
  BTW initialize variables
  I HAS A prefix_hashtable ITZ GOT NOTHING
  I HAS A hashtable_size ITZ POS_POWR 4 AN K
  I HAS A i ITZ 0, i IS NOW A NUMBR
  IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN hashtable_size
    I HAS A new_array ITZ GOT NOTHING
    prefix_hashtable!i R new_array
  IM OUTTA YR loop
  
  BTW read fasta file first pass
  I HAS A fasta_idx ITZ 0, fasta_idx IS NOW A NUMBR
  IM IN YR loop
    I HAS A fasta_entry ITZ REEDZ_NXT_FASTA_ANTRY full_fasta_file AN fasta_idx
    I HAS A fasta_header ITZ fasta_entry!0
    I HAS A dna ITZ fasta_entry!1
    fasta_idx R fasta_entry!2
    BOTH SAEM LEN OF fasta_header AN 0, O RLY?
      YA RLY, GTFO
    OIC
    I HAS A hash ITZ HASH_DNA SUBYARN dna AN 0 AN K
    I HAS A temp ITZ LEN OF prefix_hashtable!hash
    prefix_hashtable!hash!temp R fasta_header
  IM OUTTA YR loop
  
  BTW read fasta file second pass
  fasta_idx R 0
  IM IN YR loop
    I HAS A fasta_entry ITZ REEDZ_NXT_FASTA_ANTRY full_fasta_file AN fasta_idx
    I HAS A fasta_header ITZ fasta_entry!0
    I HAS A dna ITZ fasta_entry!1
    fasta_idx R fasta_entry!2
    BOTH SAEM LEN OF fasta_header AN 0, O RLY?
      YA RLY, GTFO
    OIC
    I HAS A hash ITZ HASH_DNA SUBYARN dna AN DIFF OF LEN OF dna AN K AN K
    DIFFRINT prefix_hashtable!hash AN noob, O RLY?
      YA RLY
        PRINTZ_EDGES fasta_header AN prefix_hashtable!hash
    OIC
  IM OUTTA YR loop
  
KTHXBYE

