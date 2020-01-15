use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET951+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : Basic properties of sets, theorem 104
inters(cp(B,C),cp(D,E),M1) & A in M1 & (npair(A) or A = [F,G] & (inters(B,D,M2) & F nin M2 or inters(C,E,M3) & G nin M3))

,2000,_CONSTR,_RES).

get_time(Tend).

