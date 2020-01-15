use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL019+1.p
% Vectors are closed under meet
noirules & call(vec(X0,U2) & comp(X1,cp(U1,U2),X1) & inters(X0,X1,M1) & nvec(M1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

