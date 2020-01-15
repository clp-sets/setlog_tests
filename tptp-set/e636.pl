use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET893+1 : TPTP v7.0.0. Released v3.2.0. (2)
% Problem  : in(o_pair(A,B),cart_prod(sgtn(C),sgtn(D))) <=> ( A = C & B = D )
[A,B] nin cp({C},{D}) & A = C & B = D

,2000,_CONSTR,_RES).

get_time(Tend).

