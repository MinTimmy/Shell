#!/usr/bin/awk -f 
{ 
  s = gensub("\\$", "$$", "g")
  print $0
  s = gensub("S", "$", "g", s)
  print $0
  print s
}


