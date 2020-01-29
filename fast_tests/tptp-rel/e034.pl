use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL030+1.p
% Propagation of subidentities
id(M1,M2) & subset(X0,M2) & comp(X0,X1,M3) & un(X2,M4,cp(U1,U2)) & disj(X2,M4) & inters(M3,M4,M5) & comp(X0,X2,M6) & un(M6,M7,cp(U1,U2)) & disj(M6,M7) & ninters(M3,M7,M5)

,2000,_CONSTR,_RES).

get_time(Tend).

