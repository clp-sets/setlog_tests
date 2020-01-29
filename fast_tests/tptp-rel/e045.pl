use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% not in TPTP
% definition of partial function used in REL041+1.p
% proved to be equivalent to pfun constraint
% REL041+1.p => pfun
inv(X0,M1) & comp(M1,X0,M2) & id(M3,M4) & subset(M2,M4) & npfun(X0)


,2000,_CONSTR,_RES).

get_time(Tend).

