use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET614+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : X \ Y \ Z = X \ (Y U Z)
diff(B,C,M1) & diff(M1,D,M2) & un(C,D,M3) & ndiff(B,M3,M2)


,2000,_CONSTR,_RES).

get_time(Tend).

