use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET402-6.p
% Right compose with universal class
rres(X,U2,M1) & dom(M1,M2) & M3 = cp(M2,U2) & dom(X,M4) & M3 neq cp(M4,U2) & subset(X,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

