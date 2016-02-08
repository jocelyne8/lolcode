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
  
  I HAS A DNA_LETTERS ITZ "ACGTNacgtn"
  I HAS A AA_LETTERS ITZ "ACDEFGHIKLMNPQRSTVWY"
  
  BTW ============================ HELP FUNKTIONS DNA ====================================
  
  HOW DUZ I REVERSE_COMPLEMENT YR dna
    I HAS A revcompl ITZ "", revcompl IS NOW A YARN
    I HAS A i ITZ 0, i IS NOW A NUMBR
    BTW go through string
    IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN LEN OF dna
      I HAS A char ITZ dna!i
      char, WTF?
        OMG "A", OMG "a"
          revcompl R SMOOSH "T" AN revcompl
          GTFO
        OMG "C", OMG "c"
          revcompl R SMOOSH "G" AN revcompl
          GTFO
        OMG "G", OMG "g"
          revcompl R SMOOSH "C" AN revcompl
          GTFO
        OMG "T", OMG "t"
          revcompl R SMOOSH "A" AN revcompl
          GTFO
      OIC
    IM OUTTA YR loop
    FOUND YR revcompl
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
  
  BTW =========================== HELP FUNKSIONS DNA PALINDROME ==========================
  HOW DUZ I ADD_PALINDROME_AT_POSITION YR dna AN YR rev_compl AN YR pos AN YR array
    I HAS A len ITZ 4
    IM IN YR loop UPPIN YR len WILE BOTH SAEM len AN SMALLR OF len AN 12
      DIFFRINT LEN OF dna AN BIGGR OF LEN OF dna AN SUM OF pos AN len, O RLY?
        YA RLY, GTFO
      OIC
      I HAS A i ITZ DIFF OF LEN OF rev_compl AN SUM OF pos AN len
      I HAS A s1 ITZ SUBYARN dna AN pos AN len
      I HAS A s2 ITZ SUBYARN rev_compl AN i AN len
      BOTH SAEM s1 AN s2, O RLY?
        YA RLY
          I HAS A obj ITZ GOT NOTHING
          obj!0 R SUM OF pos AN 1
          obj!1 R len
          APPEND2BUKKIT array AN obj 
      OIC
    IM OUTTA YR loop
  
  IF U SAY SO
  
  
  
  BTW ======================================== MAIN ======================================
  
  CAN HAS STDIO?
  I HAS A dna, GIMMEH dna, dna IS NOW A YARN
  
  I HAS A rev_compl ITZ REVERSE_COMPLEMENT dna
  
  I HAS A i ITZ 0
  I HAS A array ITZ GOT NOTHING
  IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF dna
    ADD_PALINDROME_AT_POSITION dna AN rev_compl AN i AN array
  IM OUTTA YR loop
  
  i R 0
  IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF array
    PRINT_BUKKIT array!i AN " "
  IM OUTTA YR loop
  
KTHXBYE

