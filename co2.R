Vbar=0.05
T=280
a=4.192
B=0.02665
R=0.083145
P1= (R*T)/(Vbar-B)
P2= a/( Vbar*(Vbar+B) + B*(Vbar-B) )

P = P1 - P2

cat(P,"\n")