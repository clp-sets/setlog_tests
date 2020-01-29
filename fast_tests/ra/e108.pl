use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Schröder equivalences
% Heterogeneous Relation Algebra, Schmidt, Hattensperger and Winter
% inv(Q);cmpt(S) <= cmpt(R) <==> cmpt(S);inv(R) <= cmpt(Q)
% inv(Q);cmpt(S) <= cmpt(R) <== cmpt(S);inv(R) <= cmpt(Q)
inv(Q,M2) & un(S,M3,cp(A,C)) & disj(S,M3) & comp(M2,M3,M4) & un(R,M5,cp(B,C)) & disj(R,M5) & nsubset(M4,M5) & un(Q,M8,cp(A,B)) & disj(Q,M8) & inv(R,M6) & comp(M3,M6,M7) & subset(M7,M8)

,2000,_CONSTR,_RES).

get_time(Tend).

