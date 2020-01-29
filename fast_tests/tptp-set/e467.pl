use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET615+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : (X U Y) \ Z = (X \ Z) U (Y \ Z)
un(B,C,M1) & diff(M1,D,M2) & diff(B,D,M3) & diff(C,D,M4) & nun(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

