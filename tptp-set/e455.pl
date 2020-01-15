use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET604+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : The difference of the empty set and X is the empty set
ndiff({},B,{})

,2000,_CONSTR,_RES).

get_time(Tend).

