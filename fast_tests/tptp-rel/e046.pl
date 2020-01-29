use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% not in TPTP
% definition of partial function used in REL041+1.p
% proved to be equivalent to pfun constraint
% REL041+1.p <= pfun
pfun(X0) & inv(X0,M1) & comp(M1,X0,M2) & id(U,M4) & rres(X0,U,X0) & nsubset(M2,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

