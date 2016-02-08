OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
TLDR

OBTW 
Get fasta file from http://www.uniprot.org/?tab=batch
Prot ids and fasta file must be in same order and have same number of sequences. 
We ignore IDs from fasta files and use those of prot_ids_file.
TLDR

HAI 1.3  
  
  BTW =================================== VARS ===========================================
  BTW this is a NOOB type object to find if uninitialized array
  I HAS A noob
  
  I HAS A DIGITS ITZ "0123456789"
  I HAS A LOWER_ALPHA ITZ "abcdefghijklmnopqrstuvwxyz"
  I HAS A UPPER_ALPHA ITZ "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  
  
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
  
  
  BTW find(string, substring, start_index)
  HOW DUZ I FIND_SUBYARN YR yarn AN YR subyarn AN YR index
    I HAS A i ITZ index, i IS NOW A NUMBR
    IM IN YR loop UPPIN YR i WILE BOTH SAEM i AN SMALLR OF i AN DIFF OF LEN OF yarn AN LEN OF subyarn
      I HAS A match ITZ WIN
      I HAS A j ITZ 0
      IM IN YR inner_loop UPPIN YR j WILE DIFFRINT j AN BIGGR OF j AN LEN OF subyarn
        I HAS A k ITZ SUM OF i AN j
        DIFFRINT yarn!k AN subyarn!j, O RLY?
          YA RLY
            match R FAIL
            GTFO
        OIC
      IM OUTTA YR inner_loop
      match, O RLY?
        YA RLY, FOUND YR i
      OIC
    IM OUTTA YR loop
    FOUND YR -1
  IF U SAY SO
  
  
  BTW substring(string, index, length)
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
  
  HOW DUZ I TRIM_LINE YR line
    I HAS A len ITZ LEN OF line
    IM IN YR loop NERFIN YR len WILE DIFFRINT 0 AN BIGGR OF 0 AN len
      I HAS A i ITZ DIFF OF len AN 1
      BOTH OF DIFFRINT line!i AN ":)" AN DIFFRINT line!i AN ":0D", O RLY?
        YA RLY, FOUND YR SUBYARN line AN 0 AN len
      OIC
    IM OUTTA YR loop
    FOUND YR ""
  IF U SAY SO
  
  
  BTW ============================ HELP FUNKTIONS CHARS ==================================
  HOW DUZ I IS_CHAR_IN_YARN YR char AN YR yarn
    DIFFRINT -1 AN FINDCHAR yarn AN char AN 0, O RLY?
      YA RLY, FOUND YR WIN
    OIC 
    FOUND YR FAIL
  IF U SAY SO
  
  HOW DUZ I IS_CHAR_DIGIT YR char
    FOUND YR IS_CHAR_IN_YARN char AN DIGITS
  IF U SAY SO
  
  HOW DUZ I IS_CHAR_LOWER_ALPHA YR char
    FOUND YR IS_CHAR_IN_YARN char AN LOWER_ALPHA
  IF U SAY SO
  
  HOW DUZ I IS_CHAR_UPPER_ALPHA YR char
    FOUND YR IS_CHAR_IN_YARN char AN UPPER_ALPHA
  IF U SAY SO
  
  
  BTW ========================== HELP FUNKTIONS READ FASTA ===============================
  
  HOW DUZ I REEDZ_NXT_FASTA_ANTRY full_fasta_file AN fasta_idx
    I HAS A fasta_header ITZ "", fasta_header IS NOW A YARN
    I HAS A sequence ITZ "", sequence IS NOW A YARN
    IM IN YR loop
      BOTH SAEM fasta_idx AN BIGGR OF fasta_idx AN LEN OF full_fasta_file, O RLY?
        YA RLY
          I HAS A array ITZ GOT NOTHING
          array!0 R fasta_header
          array!1 R sequence
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
              array!1 R sequence
              array!2 R fasta_idx
              FOUND YR array
          OIC
          fasta_header R SUBYARN line AN 1 AN DIFF OF LEN OF line AN 2
        NO WAI
          BTW dna
          I HAS A j ITZ 0
          IM IN YR inner_loop UPPIN YR j WILE DIFFRINT j AN BIGGR OF j AN LEN OF line
            EITHER OF IS_CHAR_LOWER_ALPHA line!j AN IS_CHAR_UPPER_ALPHA line!j, O RLY?
              YA RLY
                sequence R SMOOSH sequence AN line!j MKAY
            OIC
          IM OUTTA YR inner_loop
      OIC
      fasta_idx R SUM OF fasta_idx AN LEN OF line
    IM OUTTA YR loop
  IF U SAY SO
  
  
  BTW =========================== HELP FUNKTION BUKKITS ==================================
  
  HOW DUZ I APPEND2BUKKIT YR array AN YR item
    I HAS A temp ITZ LEN OF array
    array!temp R item
  IF U SAY SO
  
  HOW DUZ I PRINT_BUKKIT YR array AN YR spacer
    I HAS A i ITZ 0, I HAS A len1 ITZ DIFF OF LEN OF array AN 1
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN len1
      VISIBLE array!i!
      VISIBLE spacer!
    IM OUTTA YR loop
    BOTH SAEM 0 AN SMALLR OF len1 AN 0, O RLY?
      YA RLY
      VISIBLE array!len1!
    IM OUTTA YR loop
    VISIBLE ""
  IF U SAY SO
  
  
  BTW ======================= HELP FUNKTION PATTERN SEARCH ===============================
  HOW DUZ I CHECK_N_GLYCOSYLATION YR prot_seq AN YR index
    BTW N{P}[ST]{P}
    I HAS A i ITZ SUM OF index AN 3
    BOTH SAEM i AN BIGGR OF i AN LEN OF prot_seq, O RLY?
      YA RLY, FOUND YR FAIL
    OIC
    i R index
    DIFFRINT "N" AN prot_seq!i, O RLY?
      YA RLY, FOUND YR FAIL
    OIC
    i R SUM OF i AN 1
    BOTH SAEM "P" AN prot_seq!i, O RLY?
      YA RLY, FOUND YR FAIL
    OIC
    i R SUM OF i AN 1
    BOTH OF DIFFRINT "S" AN prot_seq!i AN DIFFRINT "T" AN prot_seq!i , O RLY?
      YA RLY, FOUND YR FAIL
    OIC
    i R SUM OF i AN 1
    BOTH SAEM "P" AN prot_seq!i, O RLY?
      YA RLY, FOUND YR FAIL
    OIC
    FOUND YR WIN
  IF U SAY SO
  
  HOW DUZ I FIND_N_GLYCOSYLATION YR prot_seq
    BTW N{P}[ST]{P}
    I HAS A pos_array ITZ GOT NOTHING
    I HAS A idx ITZ 0
    IM IN YR loop UPPIN YR idx WILE DIFFRINT idx AN BIGGR OF idx AN LEN OF prot_seq
      BTW check pattern at idx
      CHECK_N_GLYCOSYLATION prot_seq AN idx, O RLY?
        YA RLY
          APPEND2BUKKIT pos_array AN SUM OF idx AN 1
      OIC
    IM OUTTA YR loop
    FOUND YR pos_array
  IF U SAY SO
  
  
  BTW =================================== MAIN ===========================================
  
  CAN HAS STDIO?
  I HAS A prot_ids_file, GIMMEH prot_ids_file
  I HAS A fasta_file, GIMMEH fasta_file
  prot_ids_file IS NOW A YARN
  fasta_file IS NOW A YARN
  
  BTW read prot_ids
  I HAS A prot_id_array ITZ GOT NOTHING
  I HAS A file_idx ITZ 0
  IM IN YR loop
    BOTH SAEM file_idx AN BIGGR OF file_idx AN LEN OF prot_ids_file, O RLY?
      YA RLY, GTFO
    OIC
    I HAS A line ITZ GETLINE prot_ids_file AN file_idx
    I HAS A prot_id ITZ TRIM_LINE line
    DIFFRINT 0 AN BIGGR OF 0 AN LEN OF line, O RLY?
      YA RLY, APPEND2BUKKIT prot_id_array AN prot_id
    OIC
    file_idx R SUM OF file_idx AN LEN OF line
  IM OUTTA YR loop
  
  BTW read fasta file
  I HAS A seq_idx ITZ 0
  I HAS A fasta_idx ITZ 0, fasta_idx IS NOW A NUMBR
  IM IN YR loop
    I HAS A fasta_entry ITZ REEDZ_NXT_FASTA_ANTRY fasta_file AN fasta_idx
    I HAS A fasta_header ITZ fasta_entry!0
    I HAS A protseq ITZ fasta_entry!1
    fasta_idx R fasta_entry!2
    BTW exit condition
    BOTH SAEM LEN OF fasta_header AN 0, O RLY?
      YA RLY, GTFO
    OIC
    BTW get N-glycosylation
    I HAS A pos_array ITZ FIND_N_GLYCOSYLATION protseq
    DIFFRINT 0 AN BIGGR OF 0 AN LEN OF pos_array, O RLY?
      YA RLY
        VISIBLE prot_id_array!seq_idx
        PRINT_BUKKIT pos_array AN " "
    OIC
    
    seq_idx R SUM OF seq_idx AN 1
  IM OUTTA YR loop
  
  
KTHXBYE

