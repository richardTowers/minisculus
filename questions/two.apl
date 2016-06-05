#!/usr/local/bin/apl --script
⎕IO←0⋄k[(ρk)|((↑ws-2×(ws←k⍳∈¯2↑⎕ARG)[1])+(k←∈(⍕¨⍳10) ⎕AV[65+x,32+x←⍳26] ".,?!'" '" ')⍳⍞)]
)OFF
