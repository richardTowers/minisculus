#!/usr/local/bin/apl --script
⎕IO←0⋄k[(ρk)|((k⍳∈¯1↑⎕ARG)+(k←∈(⍕¨⍳10) ⎕AV[65+x,32+x←⍳26] ".,?!'" '" ')⍳⍞)]
)OFF
