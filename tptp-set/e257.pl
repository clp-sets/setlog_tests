use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET306-6.p
% Range of universal class is the universal class
U1 neq {} & U2 neq {} & nran(cp(U1,U2),U2)

,2000,_CONSTR,_RES).

get_time(Tend).

