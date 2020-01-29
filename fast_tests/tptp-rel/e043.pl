use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL039+1.p
% Dedekind law
comp(X0,X1,M1) & inters(M1,X2,M2) & inv(X1,M3) & comp(X2,M3,M4) & inters(X0,M4,M5) & inv(X0,M6) & comp(M6,X2,M7) & inters(X1,M7,M8) & comp(M5,M8,M9) & nsubset(M2,M9)

,2000,_CONSTR,_RES).

get_time(Tend).

