use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL038+1.p
% Modular law
comp(X0,X1,M1) & inters(M1,X2,M3) & inv(X0,M4) & comp(M4,X2,M5) & inters(X1,M5,M6) & comp(X0,M6,M7) & inters(M7,X2,M8) & nsubset(M3,M8)

,2000,_CONSTR,_RES).

get_time(Tend).

