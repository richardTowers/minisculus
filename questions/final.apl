#!/usr/local/bin/apl --script
⎕IO←0
⎕PW←1000
cipher ← ⍞
cases ← (,(⍳10)∘.{⍺ ⍵}⍳10)
decrypt ← {k[∈{⍵,(ρk)|⍺-2×¯1↑⍵}/⊖((2×⍵[1])-↑⍵)+(k←∈(⍕¨⍳10) ⎕AV[65+x,32+x←⍳26] ".,?!'" '" ')⍳cipher]}
candidates ← decrypt¨cases
matchIndex ← ({∨/'BUNKER'⍷⍵}¨candidates)⍳1
cases[matchIndex]
candidates[matchIndex]
)OFF

