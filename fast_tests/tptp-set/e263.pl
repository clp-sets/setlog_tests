use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET312-6.p (1)
% Range only considers ordered pairs
% direct encoding with type constraint
inters(X,cp(U1,U2),M1) & ran(M1,M2) & nran(X,M2) & subset(X,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

