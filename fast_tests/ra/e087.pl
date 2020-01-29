use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (23)
comp(Z,X,N1) & inters(N1,Y,N2) & inv(Z,IZ) & comp(IZ,Y,N3) & inters(X,N3,N4) & comp(Z,N4,N5) & inters(N5,Y,N6) & nsubset(N2,N6)

,2000,_CONSTR,_RES).

get_time(Tend).

% comp(Z,X,M1) & inters(M1,Y,M2) & inv(Z,IZ) & comp(IZ,Y,M3) & inters(X,M3,M4) & comp(Z,M4,M5) & inters(M5,Y,M6) & nsubset(M2,M6)

