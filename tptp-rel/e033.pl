use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL029+1.p
% Distributivity of subidentities
id(M1,M2) & subset(X0,M2) & subset(X1,M2) & comp(X0,X2,M3) & comp(X1,X2,M4) & inters(M3,M4,M5) & inters(X0,X1,M6) & ncomp(M6,X2,M5)

,2000,_CONSTR,_RES).

get_time(Tend).

