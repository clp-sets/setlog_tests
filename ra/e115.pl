use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Heterogeneous Relation Algebra, Schmidt, Hattensperger and Winter
% Theorem 3.2.2 (ii) S <= A*D & Q <= C*A ==> (Q /\ inv(P;B*C));S = Q;(S /\ P;B*D)
subset(Q,cp(C,A)) & subset(S,cp(A,D)) & 
comp(P,cp(B,C),M1) & inv(M1,M2) & inters(Q,M2,M3) & comp(M3,S,M4) & comp(P,cp(B,D),M5) & inters(S,M5,M6) & ncomp(Q,M6,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

