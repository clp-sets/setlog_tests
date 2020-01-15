use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% rimgCross
X in A & nrimg(cp(A,B),{X},B)

,2000,_CONSTR,_RES).

get_time(Tend).

