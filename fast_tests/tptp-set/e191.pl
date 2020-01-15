use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET237-6.p
% Restriction alternate definition 1
restrict(Xr,X,Y,M1) & nsubset(M1,cp(U1,U2)) & subset(X,U1) & subset(Y,U2)

,2000,_CONSTR,_RES).

get_time(Tend).

