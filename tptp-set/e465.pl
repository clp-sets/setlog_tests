use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET613+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : (X U Y) \ X ^ Y = (X \ Y) U (Y \ X)
un(B,C,M1) & inters(B,C,M2) & diff(M1,M2,M3) & diff(B,C,M4) & diff(C,B,M5) & nun(M4,M5,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

