use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL020+1.p
% Restriction of subidentities
%
% with older versions finishes after 17 minutes
ninters(X0,X1,M3) & vec(X0,U) & id(U,M1) & inters(X0,M1,M2) & comp(M2,X1,M3) & delay(dom(X1,M4) & subset(M4,U) & ran(X1,M5) & subset(M5,U))

,2000,_CONSTR,_RES).

get_time(Tend).


