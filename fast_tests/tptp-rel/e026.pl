use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL022+1.p
% Restriction of subidentities
vec(X0,U) & inters(X0,X1,M1) & id(U,M2) & inters(X0,M2,M3) & comp(M2,X1,M4) & nsubset(M1,M4) & dom(X1,M5) & subset(M5,U) 

,2000,_CONSTR,_RES).

get_time(Tend).

