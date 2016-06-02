#!/usr/local/bin/apl --script

⎕IO←0

k←'0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.,?!',"'",'" '
∇ p mkI w
k[{ρk}|{w+k⍳p}]
∇
'Strong NE Winds!' mkI 6

∇ p mkII ws
i←↑ws-2×ws[1]
k[{ρk}|{i+k⍳p}]
∇

'abc' mkII 2 5
'The Desert Fox will move 30 tanks to Calais at dawn' mkII 9 3
)OFF
