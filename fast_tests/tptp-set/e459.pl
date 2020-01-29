use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET608+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : X ^ Y U (X \ Y) = X
inters(B,C,M1) & diff(B,C,M2) & nun(M1,M2,B)

,2000,_CONSTR,_RES).

get_time(Tend).

