use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET383-6.p
% Corollary 2 to relation property 2
restrict(X,U1,U2,M1) & dom(X,M2) & ran(X,M3) & nsubset(M1,cp(M2,M3))

,2000,_CONSTR,_RES).

get_time(Tend).

