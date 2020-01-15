use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET968+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : Basic properties of sets, theorem 121
un(A,B,M1) & un(C,D,M2) & un(cp(A,C),cp(A,D),M3) & un(M3,cp(B,C),M4) & nun(M4,cp(B,D),cp(M1,M2))

,2000,_CONSTR,_RES).

get_time(Tend).

