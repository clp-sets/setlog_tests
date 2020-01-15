use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET315-6.p
% Corollary to range property 3
ran(Xr,M1) & restrict(Xr,X,M1,M2) & nrestrict(Xr,X,U2,M2) & subset(Xr,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

