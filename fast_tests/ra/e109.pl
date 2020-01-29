use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Schröder equivalences
% Heterogeneous Relation Algebra, Schmidt, Hattensperger and Winter
% Q;S <= S <==> cmpt(S);inv(R) <= cmpt(Q)
% Q;S <= S <== cmpt(S);inv(R) <= cmpt(Q)
comp(Q,R,M1) & nsubset(M1,S) & un(S,M3,cp(A,C)) & disj(S,M3) & inv(R,M6) & comp(M3,M6,M7) & un(Q,M8,cp(A,B)) & disj(Q,M8) & subset(M7,M8) & subset(R,cp(B,C))

,2000,_CONSTR,_RES).

get_time(Tend).

