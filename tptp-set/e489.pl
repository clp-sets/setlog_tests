use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET635+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : X ^ (Y \ Z) = X ^ Y \ X ^ Z
diff(C,D,M1) & inters(B,M1,M2) & inters(B,C,M3) & inters(B,D,M4) & ndiff(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

