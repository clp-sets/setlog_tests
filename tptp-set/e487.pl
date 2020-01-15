use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET633+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : If X \ Y (= Z and Y \ X (= Z, then X sym\ Y (= Z
diff(B,C,M1) & subset(M1,D) & diff(C,B,M2) & subset(M2,D) & symdiff(B,C,M3) & nsubset(M3,D)

,2000,_CONSTR,_RES).

get_time(Tend).

