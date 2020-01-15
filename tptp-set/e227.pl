use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET274-6.p
% Domain property 4
restrict(X,Y,U2,M1) & dom(M1,M2) & dom(X,M3) & ninters(M3,Y,M2) & subset(X,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

