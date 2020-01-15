use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET042-3.p
% Ordered pairs are in cross products
A in Set_a & B in Set_b & [A,B] nin cp(Set_a,Set_b)

,2000,_CONSTR,_RES).

get_time(Tend).

