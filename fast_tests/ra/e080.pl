use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Khal 2003 p.182
% It seems that he can't prove it automatically with Isabelle/HOL
pfun(F) & comp(S,F,N1) & inters(R,N1,N2) & inv(F,IF) & comp(R,IF,N3) & inters(N3,S,N4) & ncomp(N4,F,N2)

,2000,_CONSTR,_RES).

get_time(Tend).

