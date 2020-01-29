use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET293-6.p
% Inverse of universal class is the universal class
ninv(cp(U1,U2),cp(U2,U1))

,2000,_CONSTR,_RES).

get_time(Tend).

