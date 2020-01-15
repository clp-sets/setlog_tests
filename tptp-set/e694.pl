use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET973+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : Basic properties of sets, theorem 126
diff(A,C,M1) & diff(B,D,M2) & diff(cp(A,B),cp(C,D),M3) & nun(cp(M1,B),cp(A,M2),M3)

,2000,_CONSTR,_RES).

get_time(Tend).

