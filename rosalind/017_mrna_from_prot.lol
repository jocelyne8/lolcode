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
  
  
  BTW ============================= HELP FUNKTIONS RNA ===================================
  
  BTW itz a funksion
  HOW DUZ I GETZ_CODON_COUNTS YR aa
    aa, WTF?
      OMG "W", OMG "M"
        FOUND YR 1 
      OMG "F", OMG "Y", OMG "C", OMG "H", OMG "Q"
      OMG "N", OMG "K", OMG "D", OMG "E"
        FOUND YR 2
      OMG "I", OMG "STOP"
        FOUND YR 3
      OMG "P", OMG "T", OMG "V", OMG "A", OMG "G"
        FOUND YR 4
      OMG "L", OMG "S", OMG "R"
        FOUND YR 6
      OMGWTF
        FOUND YR -1
    OIC
  IF U SAY SO
  
  
  BTW =================================== MAIN ===========================================
  
  CAN HAS STDIO?
  I HAS A prot_seq, GIMMEH prot_seq
  prot_seq IS NOW A YARN
  
  I HAS A i ITZ 0
  I HAS A comb ITZ 0
  IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF prot_seq
    I HAS A num ITZ GETZ_CODON_COUNTS prot_seq!i
    DIFFRINT num AN -1, O RLY?
      YA RLY?
        comb R PRODUKT OF comb AN num
        comb R MOD OF comb AN 1000000
    OIC
  IM OUTTA YR loop
  comb R PRODUKT OF comb AN GETZ_CODON_COUNTS "STOP"
  comb R MOD OF comb AN 1000000
  
  VISIBLE comb
  
KTHXBYE

