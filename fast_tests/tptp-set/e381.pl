use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET028-3 : TPTP v7.0.0. Released v1.0.0.
% Problem  : Relationship between apply and image, part 1 of 2
apply(A_function,Element,M1) & rimg(A_function,{Element},M2) & nsubset({M1},M2)

,2000,_CONSTR,_RES).

get_time(Tend).

