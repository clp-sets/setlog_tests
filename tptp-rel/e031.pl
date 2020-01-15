use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL027+1.p
% Complements of vectors and subidentities
id(U,M2) & subset(X0,M2) & comp(X0,cp(U,U),M3) & diff(cp(U,U),M3,M4) & inters(M4,M2,M5) & un(X0,M7,cp(U,U)) & disj(X0,M7) & ninters(M7,M2,M5)

,2000,_CONSTR,_RES).

get_time(Tend).

