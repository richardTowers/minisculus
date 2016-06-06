#!/usr/local/bin/apl --script
⎕IO←0⋄k[(ρk)|((+/(1 ¯2)×(k⍳∈¯2↑⎕ARG))+(k←∈(⍕¨⍳10) ⎕AV[65+x,32+x←⍳26] ".,?!'" '" ')⍳⍞)]
)OFF
