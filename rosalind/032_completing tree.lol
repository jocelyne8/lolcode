OBTW
This code was interpreted using loljs:
http://asgaard.co.uk/misc/loljs/#
TLDR
HAI 1.3
  
  OBTW
  Let's consider an undirected graph of n nodes and no edges. It has n connected 
  components. We subsequently add edges to the graph without creating cycles. This means 
  an edge cannot be within an already connected component. Thus, it must be between 
  two connected components, which then become one connected component (a tree in fact). 
  Thus, we need to add n-1 edges to connect all nodes (original connected components) 
  into a tree. 
  TLDR
  
  
  BTW =================================== VARS ===========================================
  BTW this is a NOOB type object to find if uninitialized array
  I HAS A noob
  
  I HAS A DIGITS ITZ "0123456789"
  
  
  BTW ======================== HELP FUNKTIONS READ NUMBRS ================================
  HOW DUZ I IS_CHAR_DIGIT YR char
    I HAS A i ITZ 0
    IM IN YR loop UPPIN YR i WILE DIFFRINT i AN BIGGR OF i AN LEN OF DIGITS
      BOTH SAEM char AN DIGITS!i, O RLY?
        YA RLY, FOUND YR WIN
      OIC
    IM OUTTA YR loop
    FOUND YR FAIL
  IF U SAY SO
  
  
  HOW DUZ I GETS_NXT_NUMBR line AN line_idx
    I HAS A yarn ITZ ""
    IM IN YR loop
      BOTH SAEM line_idx AN BIGGR OF line_idx AN LEN OF line, O RLY?
        YA RLY
          DIFFRINT 0 AN BIGGR OF 0 AN LEN OF yarn, O RLY?
            YA RLY
              yarn IS NOW A NUMBR
              I HAS A retarray ITZ GOT NOTHING
              retarray!0 R yarn, retarray!1 R line_idx
              FOUND YR retarray
            NO WAI
              FOUND YR noob
          OIC
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
              I HAS A retarray ITZ GOT NOTHING
              retarray!0 R yarn, retarray!1 R line_idx
              FOUND YR retarray
          OIC
      OIC
      line_idx R SUM OF line_idx AN 1
    IM OUTTA YR loop
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
  
  
  BTW =================================== MAIN ===========================================
  CAN HAS STDIO?
  I HAS A full_graph_file, GIMMEH full_graph_file
  full_graph_file IS NOW A YARN
  
  BTW read first line: number of nodes
  I HAS A file_idx ITZ 0
  I HAS A line ITZ GETLINE full_graph_file AN file_idx
  file_idx R SUM OF file_idx AN LEN OF line
  num_nodes R SUBYARN line AN 0 AN DIFF OF LEN OF line AN 1
  num_nodes IS NOW A NUMBR
  
  BTW read edges
  I HAS A num_edges ITZ 0
  IM IN YR loop
    BOTH SAEM file_idx AN BIGGR OF file_idx AN LEN OF full_graph_file, O RLY?
      YA RLY, GTFO
    OIC
    I HAS A line ITZ GETLINE full_graph_file AN file_idx
    DIFFRINT 0 AN BIGGR OF 0 AN LEN OF line, O RLY?
      YA RLY, num_edges R SUM OF num_edges AN 1
    OIC
    file_idx R SUM OF file_idx AN LEN OF line
  IM OUTTA YR loop
  
  VISIBLE DIFF OF num_nodes AN SUM OF num_edges AN 1
  
  
KTHXBYE

