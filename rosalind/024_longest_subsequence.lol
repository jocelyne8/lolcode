OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
TLDR
HAI 1.3
  

  BTW =================================== VARS ===========================================
  BTW this is a NOOB type object to find if uninitialized array
  I HAS A noob
  
  I HAS A DIGITS ITZ "0123456789"
  
  
  BTW ============================= COMPARE FUNKTIONS ====================================
  
  HOW DUZ I IS_LESS_THAN YR x AN YR y
    FOUND YR DIFFRINT x AN BIGGR OF x AN y
  IF U SAY SO 
  
  
  HOW DUZ I IS_GREATER_THAN YR x AN YR y
    FOUND YR DIFFRINT x AN SMALLR OF x AN y
  IF U SAY SO 
  
  BTW =========================== HELP FUNKTION BUKKITS ==================================
  
  HOW DUZ I INITIALIZE_BUKKIT YR init_val AN YR len
    I HAS A array ITZ GOT NOTHING
    I HAS A i ITZ 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN len
      bool_array!i R init_val
    IM OUTTA YR loop
  IF U SAY SO
  
  HOW DUZ I APPEND2BUKKIT YR array AN YR item
    I HAS A temp ITZ LEN OF array
    array!temp R item
  IF U SAY SO
  
  HOW DUZ I REVERSE_BUKKIT YR array
    I HAS A new_bukkit ITZ GOT NOTHING
    I HAS A i ITZ 0
    IM IN YR loop UPPIN YR i WILE IS_LESS_THAN i AN LEN OF array 
      I HAS A j ITZ DIFF OF LEN OF array AN SUM OF i AN 1
      new_bukkit!j R array!i 
    IM OUTTA YR loop
    FOUND YR new_bukkit
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
  
  
  BTW ======================== HELP FUNKTIONS READ NUMBRS ================================
  
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
  
  HOW DUZ I IS_CHAR_IN_YARN YR char AN YR yarn
    DIFFRINT -1 AN FINDCHAR yarn AN char AN 0, O RLY?
      YA RLY, FOUND YR WIN
      NO WAI, FOUND YR FAIL
    OIC
  IF U SAY SO
  
  HOW DUZ I IS_CHAR_DIGIT YR char
    FOUND YR IS_CHAR_IN_YARN char AN DIGITS
  IF U SAY SO  
  
  HOW DUZ I GET_NUMBRS YR line
    I HAS A line_idx ITZ 0
    I HAS A num_array ITZ GOT NOTHING
    I HAS A yarn ITZ ""
    IM IN YR loop
      BOTH SAEM line_idx AN BIGGR OF line_idx AN LEN OF line, O RLY?
        YA RLY
          DIFFRINT 0 AN BIGGR OF 0 AN LEN OF yarn, O RLY?
            YA RLY
              yarn IS NOW A NUMBR
              APPEND2BUKKIT num_array AN yarn
              yarn R ""
          OIC
          GTFO
      OIC
      IS_CHAR_DIGIT line!line_idx, O RLY?
        YA RLY
          BTW numbr
          yarn R SMOOSH yarn line!line_idx MKAY
        NO WAI
          BTW not numbr
          DIFFRINT 0 AN BIGGR OF LEN OF yarn AN 0, O RLY?
            YA RLY
              yarn IS NOW A NUMBR
              APPEND2BUKKIT num_array AN yarn
              yarn R ""
          OIC
      OIC
      line_idx R SUM OF line_idx AN 1
    IM OUTTA YR loop
    FOUND YR num_array
  IF U SAY SO
  
  BTW =========================== LONGEST INCREEZ DECREEZ SUBSEQ =========================
  HOW DUZ I SEARCH_PREV_NUM_COMPARE YR curr_num AN YR seq_num AN YR increasing
    increasing, O RLY?
      YA RLY, FOUND YR IS_LESS_THAN seq_num AN curr_num
      NO WAI, FOUND YR IS_GREATER_THAN seq_num AN curr_num
    OIC
  IF U SAY SO
  
  HOW DUZ I LIDSS YR num_seq_array AN YR increasing
    
    BTW FILL ARRAYS
    I HAS A len_array ITZ GOT NOTHING
    len_array!0 R -1
    I HAS A backtrace ITZ GOT NOTHING
    I HAS A max_len ITZ 0
    
    I HAS A i ITZ 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF num_seq_array
      I HAS A curr_num ITZ num_seq_array!i
      
      BTW search for prev num
      I HAS A prev_len ITZ 0
      I HAS A j ITZ max_len
      IM IN YR search_loop NERFIN YR j WILE DIFFRINT 0 AN BIGGR OF j AN 0
        I HAS A temp ITZ len_array!j
        SEARCH_PREV_NUM_COMPARE curr_num AN num_seq_array!temp AN increasing, O RLY?
          YA RLY
            prev_len R j
            GTFO
        OIC
      IM OUTTA YR search_loop
      
      I HAS A len ITZ SUM OF prev_len AN 1
      
      BTW fill next slot in backtrace array
      BOTH SAEM prev_len AN 0, O RLY?
        YA RLY, backtrace!i R -1
        NO WAI, backtrace!i R len_array!prev_len
      OIC
      
      BTW check if new max or better subseq
      BOTH SAEM prev_len AN max_len, O RLY?
        YA RLY
          len_array!len R i
          max_len R BIGGR OF len AN max_len
        NO WAI
          I HAS A temp ITZ len_array!len
          EITHER OF BOTH OF increasing AN IS_LESS_THAN curr_num AN num_seq_array!temp AN BOTH OF NOT increasing AN IS_GREATER_THAN curr_num AN num_seq_array!temp, O RLY?
            YA RLY
              len_array!len R i
              max_len R BIGGR OF len AN max_len
          OIC
      OIC

    IM OUTTA YR loop
    
    
    BTW BACKTRACE
    I HAS A subseq_array ITZ GOT NOTHING
    I HAS A idx ITZ len_array!max_len
    IM IN YR loop
      BOTH SAEM idx AN -1, O RLY?
        YA RLY, GTFO
      OIC
      APPEND2BUKKIT subseq_array AN num_seq_array!idx
      idx R backtrace!idx
    IM OUTTA YR loop
    
    subseq_array R REVERSE_BUKKIT subseq_array
    
    FOUND YR subseq_array
  IF U SAY SO

  BTW =================================== MAIN ===========================================
  CAN HAS STDIO?
  I HAS A permutation, GIMMEH permutation, permutation IS NOW A YARN
  
  BTW read edges
  I HAS A num_array ITZ GET_NUMBRS permutation
  
  PRINT_BUKKIT LIDSS num_array AN WIN AN " "
  
  PRINT_BUKKIT LIDSS num_array AN FAIL AN " "
  
KTHXBYE

