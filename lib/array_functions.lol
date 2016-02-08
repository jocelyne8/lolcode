OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
TLDR

HAI 1.3  
  
  BTW =================================== VARS ===========================================
  BTW this is a NOOB type object to find if uninitialized array
  I HAS A noob


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
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF array 
      I HAS A j ITZ DIFF OF LEN OF array AN SUM OF i AN 1
      new_bukkit!j R array!i 
    IM OUTTA YR loop
    FOUND YR new_bukkit
  IF U SAY SO
  
  HOW DUZ I SHIFT_BUKKIT_RIGHT YR array AN YR shift AN YR insert_val
    I HAS A new_bukkit ITZ GOT NOTHING
    I HAS A i ITZ 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN shift
      new_bukkit!i R insert_val
    IM OUTTA YR loop
    i R 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF array 
      I HAS A j ITZ SUM OF i AN shift
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
  
  
KTHXBYE

