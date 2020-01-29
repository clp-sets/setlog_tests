use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET081+1.p
% Only X can belong to {X}
Y in {X} & Y neq X

,2000,_CONSTR,_RES).

get_time(Tend).

