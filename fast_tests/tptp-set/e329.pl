use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET428-6.p
% Single valued class alternate definition 4
inv(X,M1) & comp(M1,X,M2) & [M3,M3] in M2 & id(U2,M5) & [M3,M3] nin M5 & delay(npfun(X),false) & subset(X,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

