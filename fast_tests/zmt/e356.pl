use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% invCross
ninv(cp(A,B),cp(B,A))

,2000,_CONSTR,_RES).

get_time(Tend).

