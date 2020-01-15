use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Schröder equivalences
% Heterogeneous Relation Algebra, Schmidt, Hattensperger and Winter
% Q;S <= S <==> inv(Q);cmpt(S) <= cmpt(R)
% Q;S <= S <== inv(Q);cmpt(S) <= cmpt(R)
comp(Q,R,M1) & nsubset(M1,S) & inv(Q,M2) & un(S,M3,cp(A,C)) & disj(S,M3) & comp(M2,M3,M4) & un(R,M5,cp(B,C)) & disj(R,M5) & subset(M4,M5) & subset(Q,cp(A,B))

,2000,_CONSTR,_RES).

get_time(Tend).

