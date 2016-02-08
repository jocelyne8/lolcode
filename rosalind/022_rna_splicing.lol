OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
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
  
  HOW DUZ I IS_CHAR_UPPER_ALPHA YR char AN YR YARN
    FOUND YR IS_CHAR_IN_YARN char AN UPPER_ALPHA
  IF U SAY SO
  
  
  BTW ========================== HELP FUNKTIONS READ FASTA ===============================
  
  HOW DUZ I REEDZ_NXT_FASTA_ANTRY YR full_fasta_file AN YR fasta_idx
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
  
  
  BTW ================================ HELP FUNKSIONS TRANSLATE ==========================
  HOW DUZ I GET_AA_FOR_DNA_CODON YR codon
    codon, WTF?
      OMG "TTT", OMG "TTC"
        FOUND YR "F"
      OMG "TTA", OMG "TTG", OMG "CTT", OMG "CTC", OMG "CTA", OMG "CTG"
        FOUND YR "L"
      OMG "TCT", OMG "TCC", OMG "TCA", OMG "TCG", OMG "AGT", OMG "AGC"
        FOUND YR "S"
      OMG "TAT", OMG "TAC"
        FOUND YR "Y"
      OMG "TAA", OMG "TAG", OMG "TGA"
        FOUND YR "STOP"
      OMG "TGT", OMG "TGC"
        FOUND YR "C"
      OMG "TGG"
      	FOUND YR "W"
      OMG "CCT", OMG "CCC", OMG "CCA", OMG "CCG"
        FOUND YR "P"
      OMG "CAT", OMG "CAC"
        FOUND YR "H"
      OMG "CAA", OMG "CAG"
        FOUND YR "Q"
      OMG "CGT", OMG "CGC", OMG "CGA", OMG "CGG", OMG "AGA", OMG "AGG"
        FOUND YR "R"
      OMG "ATT", OMG "ATC", OMG "ATA"
        FOUND YR "I"
      OMG "ATG"
        FOUND YR "M"
      OMG "ACT", OMG "ACC", OMG "ACA", OMG "ACG"
        FOUND YR "T"
      OMG "AAT", OMG "AAC"
        FOUND YR "N"
      OMG "AAA", OMG "AAG"
        FOUND YR "K"
      OMG "GTT", OMG "GTC", OMG "GTA", OMG "GTG"
        FOUND YR "V"
      OMG "GCT", OMG "GCC", OMG "GCA", OMG "GCG"
        FOUND YR "A"
      OMG "GAT", OMG "GAC"
        FOUND YR "D"
      OMG "GAA", OMG "GAG"
        FOUND YR "E"
      OMG "GGT", OMG "GGC", OMG "GGA", OMG "GGG"
        FOUND YR "G"
      OMGWTF
        FOUND YR ""
    OIC
  IF U SAY SO
  
  BTW itz a funksion too tranzlaaate
  HOW DUZ I TRANSLATE_FROM_DNA YR dna
    I HAS A aa_yarn ITZ "", aa_yarn IS NOW A YARN
    I HAS A i ITZ 0, i IS NOW A NUMBR
    IM IN YR loop UPPIN YR i WILE BOTH SAEM LEN OF dna AN BIGGR OF LEN OF dna AN PRODUKT OF i AN 3 
      I HAS A j ITZ PRODUKT OF i AN 3
      I HAS A codon ITZ SUBYARN dna AN j AN 3
      I HAS A aa ITZ GET_AA_FOR_DNA_CODON codon
      BOTH SAEM aa AN "STOP", O RLY?
        YA RLY, GTFO
      OIC
      aa_yarn R SMOOSH aa_yarn aa MKAY
    IM OUTTA YR loop
    FOUND YR aa_yarn
  IF U SAY SO
  
  
  BTW =========================== HELP FUNKTION BUKKITS ==================================
  
  HOW DUZ I INITIALIZE_BUKKIT YR init_val AN YR len
    I HAS A array ITZ GOT NOTHING
    I HAS A i ITZ 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN len
      array!i R init_val
    IM OUTTA YR loop
    FOUND YR array
  IF U SAY SO
  
  BTW ====================================== MAIN ========================================
  
  CAN HAS STDIO?
  I HAS A fasta_file, GIMMEH fasta_file
  I HAS A fasta_idx ITZ 0, fasta_idx IS NOW A NUMBR
  
  BTW read first sequence
  I HAS A fasta_entry ITZ REEDZ_NXT_FASTA_ANTRY fasta_file AN fasta_idx
  I HAS A main_dna ITZ fasta_entry!1
  fasta_idx R fasta_entry!2
  
  BTW store whether itz an exon
  I HAS A bool_array ITZ INITIALIZE_BUKKIT WIN AN LEN OF main_dna
  
  BTW read introns and mark in array
  IM IN YR loop
    fasta_entry R REEDZ_NXT_FASTA_ANTRY fasta_file AN fasta_idx
    I HAS A fasta_header ITZ fasta_entry!0
    I HAS A dna ITZ fasta_entry!1
    fasta_idx R fasta_entry!2
    BTW exit condition
    BOTH SAEM LEN OF fasta_header AN 0, O RLY?
      YA RLY, GTFO
    OIC
    BTW find intron and mark
    I HAS A pos ITZ FIND_SUBYARN main_dna AN dna AN 0
    DIFFRINT pos AN -1, O RLY?
      YA RLY
        I HAS A i ITZ pos
        IM IN YR sloop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN SUM OF pos AN LEN OF dna
          bool_array!i R FAIL
        IM OUTTA YR sloop
    OIC
  IM OUTTA YR loop
  
  BTW get exon dna
  
  I HAS A i ITZ 0, I HAS A dna ITZ ""
  IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF main_dna
    bool_array!i, O RLY?
      YA RLY, dna R SMOOSH dna AN main_dna!i
    OIC
  IM OUTTA YR loop
  
  VISIBLE TRANSLATE_FROM_DNA dna
  
KTHXBYE 


