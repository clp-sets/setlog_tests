use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET594+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : If X ^ Y U X ^ Z = X, then X (= Y U Z
inters(B,C,M1) & inters(B,D,M2) & un(M1,M2,B) & un(C,D,M4) & nsubset(B,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

