use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET313-6.p
% Range property 2
ran(cp(X,Y),M1) & M1 neq Y & X neq {}

,2000,_CONSTR,_RES).

get_time(Tend).

