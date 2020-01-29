use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET893+1 : TPTP v7.0.0. Released v3.2.0. (1)
% Problem  : in(o_pair(A,B),cart_prod(sgtn(C),sgtn(D))) <=> ( A = C & B = D )
[A,B] in cp({C},{D}) & (A neq C or B neq D)

,2000,_CONSTR,_RES).

get_time(Tend).

