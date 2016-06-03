#!/usr/local/bin/apl --script

⎕IO ← 0

k ← ∈(⍕¨⍳10) ⎕AV[65+x,32+x←⍳26] ".,?!'" '" '

∇ x ← p mkI w
x ← k[(ρk)|(w+k⍳p)]
∇

'Strong NE Winds!' mkI 6

∇ x ← p mkII ws
x ← k[(ρk)|((↑ws-2×ws[1])+k⍳p)]
∇

'The Desert Fox will move 30 tanks to Calais at dawn' mkII 9 3

∇ x ← p mkIV ws
x ← k[(ρk)|((↑ws-2×ws[1])+i)+2×((ρp)ρ0,i←k⍳p)]
∇

'The white cliffs of Alghero are visible at night' mkIV 4 7

∇ x ← c mkIIdecrypt ws
x ← k[(ρk)|(((2×ws[1])-↑ws)+k⍳c)]
∇

enc ← 'The quick brown fox jumped over the slow lazy dog!' mkII 7 2
enc mkIIdecrypt 7 2

∇ x ← c mkIVdecrypt ws
i ← k⍳c
a ← (((2×ws[1])-↑ws)+i)
x ← k[(ρk)|a-2×(ρa)ρ0,a]
∇

enc ← 'AAA' mkIV 1 2
enc
enc mkIVdecrypt 1 2


⍝ ('WZyDsL3u',"'",'0TfxP06RtSSF ',"'",'DbzhdyFIAu2 zF f5KE"SOQTNA8A"NCKPOKG5D9GSQE',"'",'M86IGFMKE6',"'",'K4pEVPK!bv83I') mkIVxdecrypt 7 2

)OFF
