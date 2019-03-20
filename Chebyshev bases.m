(* ::Package:: *)

(* ::Input:: *)
(*chip[k_Integer?NonNegative,f_]:=chip[k,f]=Block[{x},Integrate[f[x]*ChebyshevT[k,x]/Sqrt[1-x^2],{x,-1,1}]]/Which[k==0,Pi,k>0,Pi/2] (*Generalizes chebyinnerprod to any f *)*)
(*chip[5,Sin[ Pi #]&]//N*)


(* ::Input:: *)
(*Clear[chebyinnerprod,approx]*)
(*chebyinnerprod[k_Integer?NonNegative]:=chebyinnerprod[k]=Block[{x},Integrate[(Sin[\[Pi] x] ChebyshevT[k,x])/Sqrt[1-x^2],{x,-1,1}]]/Which[k==0,\[Pi],k>0,\[Pi]/2] ;*)
(* (*Calculates <Sin(\[Pi] x ), Tn(x)> where <f,g> is the Chebyshev Inner product, \!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-1\), \(1\)]\(f[x]g[x]*\((1 - x ** 2)\)^\((\(-1\)/2)\)\ \[DifferentialD]x . \ f\ and\ g\ need\ to\ be\ scaled\ from\ the\ desired\ domain\ to\ [\(-1\), 1] . \ In\ this\ example\)\), Sin is scaled from [-Pi,Pi] to [-1,1], note ef will rescale after we form the polynomial.*)*)
(*approx[x_,k_]:=approx[x,k]=Sum[chebyinnerprod[t]*ChebyshevT[t,x],{t,0,k}]*)
(*ef[x_,k_]:=approx[x/Pi,k]*)
(**)


(* ::Input:: *)
(*Plot[Evaluate@SetPrecision[Sin[\[Pi] x]-approx[x,17],32],{x,-1,1},PlotRange->All,PlotPoints->10*^4]*)


(* ::Input:: *)
(*$MaxExtraPrecision=100;*)
(*table=Table[Sin[x]-ef[x,j],{j,10,40}];*)
(*%//TableForm*)
(*Table[NMaximize[{table[[j]],-\[Pi]<=x<=\[Pi]},x,WorkingPrecision->100],{j,1,Length[table]}]//TableForm*)
(*Plot[Evaluate@table[x],{x,-\[Pi],\[Pi]},PlotRange-> All,PlotLegends->Automatic,PlotPoints->250]*)



