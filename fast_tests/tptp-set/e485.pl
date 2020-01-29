use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET631+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : If X intersects the difference of Y and Z, then X intersects Y
diff(C,D,M1) & ndisj(B,M1) & disj(B,C)

,2000,_CONSTR,_RES).

get_time(Tend).

