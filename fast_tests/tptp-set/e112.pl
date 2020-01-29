use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET159+3.p
% Associativity of union
un(B,C,M1) & un(M1,D,M2) & un(C,D,M3) & nun(B,M3,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

