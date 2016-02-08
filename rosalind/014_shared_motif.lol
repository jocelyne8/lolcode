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
  
  
  BTW ========================== HELP FUNKTIONS READ FASTA ===============================
  
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
  
  
  BTW ======================= HELP FUNKTION SUBSTRING SEARCH =============================
  
  HOW DUZ I FIND_COMMON_SUBSTR_BRUTE YR seq_array AN YR ref_idx AN YR subseq_len
    BTW brute force search
    I HAS A sseq ITZ seq_array!ref_idx  BTW the shortest sequence
    I HAS A sseq_len ITZ LEN OF sseq
    I HAS A i ITZ 0
    IM IN YR seq_idx_loop UPPIN YR i WILE BOTH SAEM i AN SMALLR OF i AN DIFF OF sseq_len AN subseq_len
      I HAS A subyarn ITZ SUBYARN sseq AN i AN subseq_len
      I HAS A found ITZ WIN
      I HAS A j ITZ 0
      IM IN YR seq_loop UPPIN YR j WILE DIFFRINT j AN BIGGR OF j AN LEN OF seq_array
        DIFFRINT j AN ref_idx, O RLY?
          YA RLY
            I HAS A find_idx ITZ FIND_SUBYARN seq_array!j AN subyarn AN 0
            BOTH SAEM find_idx AN -1, O RLY?
              YA RLY
                found R FAIL
                GTFO
            OIC
        OIC
      IM OUTTA YR seq_loop
      found, O RLY?
        YA RLY
          FOUND YR subyarn
      OIC
    IM OUTTA YR seq_idx_loop
    FOUND YR noob
  IF U SAY SO
  
  
  HOW DUZ I FIND_LONGEST_COMMON_SUBSTR_BRUTE_ITER_LEN YR seq_array AN YR ref_idx AN YR min_subseq_len AN YR max_subseq_len
    BTW brute force search
    I HAS A len ITZ max_subseq_len
    IM IN YR len_loop NERFIN YR len WILE BOTH SAEM len AN BIGGR OF min_subseq_len AN len
      I HAS A common_substring ITZ FIND_COMMON_SUBSTR_BRUTE seq_array AN ref_idx AN len
      DIFFRINT common_substring AN noob, O RLY?
        YA RLY, FOUND YR common_substring
      OIC
    IM OUTTA YR len_loop
    FOUND YR noob
  IF U SAY SO
  
  
  HOW DUZ I FIND_LONGEST_COMMON_SUBSTR_BRUTE_BINARY YR seq_array AN YR ref_idx AN YR min_subseq_len AN YR max_subseq_len
    
    BTW number of lengths to check
    I HAS A num_len ITZ SUM OF DIFF OF max_subseq_len AN min_subseq_len AN 1
    BOTH SAEM 3 AN BIGGR OF 3 AN num_len, O RLY?
      YA RLY
        FOUND YR FIND_LONGEST_COMMON_SUBSTR_BRUTE_ITER_LEN seq_array AN ref_idx AN min_subseq_len AN max_subseq_len
    OIC
    
    BTW binary search 
    I HAS A len ITZ QUOSHUNT OF num_len AN 2
    len R SUM OF min_subseq_len AN len
    len IS NOW A NUMBR
    I HAS A common_substring ITZ FIND_COMMON_SUBSTR_BRUTE seq_array AN ref_idx AN len
    BOTH SAEM common_substring AN noob, O RLY?
      YA RLY
        FOUND YR FIND_LONGEST_COMMON_SUBSTR_BRUTE_BINARY seq_array AN ref_idx AN min_subseq_len AN DIFF OF len AN 1
      NO WAI
        I HAS A new_common_substring ITZ FIND_LONGEST_COMMON_SUBSTR_BRUTE_BINARY seq_array AN ref_idx AN SUM OF len AN 1 AN max_subseq_len
        BOTH SAEM new_common_substring AN noob, O RLY?
          YA RLY, FOUND YR common_substring
          NO WAI, FOUND YR new_common_substring
        OIC
    OIC
  
  IF U SAY SO
  
  
  
  BTW =================================== MAIN ===========================================
  
  CAN HAS STDIO?
  I HAS A fasta_file_part1, GIMMEH fasta_file_part1
  I HAS A fasta_file_part2, GIMMEH fasta_file_part2
  fasta_file_part1 IS NOW A YARN
  fasta_file_part2 IS NOW A YARN
  
  BTW read fasta file and store sequences
  I HAS A seq_array ITZ GOT NOTHING
  I HAS A min_seq_len_idx ITZ 0
  BTW part 1
  I HAS A fasta_idx ITZ 0, fasta_idx IS NOW A NUMBR
  IM IN YR loop
    I HAS A fasta_entry ITZ REEDZ_NXT_FASTA_ANTRY fasta_file_part1 AN fasta_idx
    I HAS A fasta_header ITZ fasta_entry!0
    I HAS A dna ITZ fasta_entry!1
    fasta_idx R fasta_entry!2
    BTW exit condition
    BOTH SAEM LEN OF fasta_header AN 0, O RLY?
      YA RLY, GTFO
    OIC
    BTW store sequence
    I HAS A seq_idx ITZ LEN OF seq_array
    seq_array!seq_idx R dna
    BTW update min seq length
    DIFFRINT LEN OF dna AN BIGGR OF LEN OF dna AN LEN OF seq_array!min_seq_len_idx
    O RLY?
      YA RLY, min_seq_len_idx R seq_idx
    OIC
  IM OUTTA YR loop
  BTW part2
  fasta_idx R 0
  IM IN YR loop
    I HAS A fasta_entry ITZ REEDZ_NXT_FASTA_ANTRY fasta_file_part2 AN fasta_idx
    I HAS A fasta_header ITZ fasta_entry!0
    I HAS A dna ITZ fasta_entry!1
    fasta_idx R fasta_entry!2
    BTW exit condition
    BOTH SAEM LEN OF fasta_header AN 0, O RLY?
      YA RLY, GTFO
    OIC
    BTW store sequence
    I HAS A seq_idx ITZ LEN OF seq_array
    seq_array!seq_idx R dna
    BTW update min seq length
    DIFFRINT LEN OF dna AN BIGGR OF LEN OF dna AN LEN OF seq_array!min_seq_len_idx
    O RLY?
      YA RLY, min_seq_len_idx R seq_idx
    OIC
  IM OUTTA YR loop
  BTW free memory? I actually don't know how javascript performs
  fasta_file_part1 R "", fasta_file_part2 R ""
  
  VISIBLE FIND_LONGEST_COMMON_SUBSTR_BRUTE_BINARY seq_array AN min_seq_len_idx AN 0 AN LEN OF seq_array!min_seq_len_idx
  
KTHXBYE

