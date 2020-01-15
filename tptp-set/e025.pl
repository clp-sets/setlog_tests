use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET033-3.p
% Domain of composition
ran(A,M1) & dom(B,M2) & subset(M1,M2) & comp(A,B,M3) & dom(A,M4) & ndom(M3,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

