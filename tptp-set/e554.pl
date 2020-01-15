use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET707+4 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Components of equal ordered pairs are equal
{{A},{A,B}} = {{U},{U,V}} & (A neq U or B neq V)

,2000,_CONSTR,_RES).

get_time(Tend).

