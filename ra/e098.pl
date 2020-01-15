use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (50)
% pfun(X) & inters(Y,Z,N1) & comp(X,N1,N2) & comp(X,Y,N3) & comp(X,Z,N4) & ninters(N3,N4,N2)

pfun(X) & inters(Y,Z,M1) & ncomp(X,M1,M2) & comp(X,Y,M3) & comp(X,Z,M4) & inters(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

% pfun(X) & inters(Y,Z,M1) & comp(X,M1,M2) & comp(X,Y,M3) & comp(X,Z,M4) & ninters(M3,M4,M2)

% pfun(X) & inters(Y,Z,M1) & ncomp(X,M1,M2) & comp(X,Y,M3) & comp(X,Z,M4) & inters(M3,M4,M2)
