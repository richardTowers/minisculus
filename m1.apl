#!/usr/local/bin/apl --script

⎕IO←0

k←'0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.,?!',"'",'" '
∇ p mkI w
k[(ρk)|(w+k⍳p)]
∇
'Strong NE Winds!' mkI 6

∇ p mkII ws
k[(ρk)|((↑ws-2×ws[1])+k⍳p)]
∇

'The Desert Fox will move 30 tanks to Calais at dawn' mkII 9 3

∇ p mkIV ws
k[(ρk)|((↑ws-2×ws[1])+i)+2×((ρp)ρ0,i←k⍳p)]
∇

'The white cliffs of Alghero are visible at night' mkIV 4 7

)OFF
