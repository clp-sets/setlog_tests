use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET764^4 : TPTP v7.0.0. Released v3.6.0.
% Problem  : The inverse image of empty set is empty
invimg(F,{},M1) & M1 neq {}

,2000,_CONSTR,_RES).

get_time(Tend).

