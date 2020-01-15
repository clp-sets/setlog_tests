use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET314-6.p
% Range property 3
ran(Xr,M1) & inters(Y,M1,M2) & restrict(Xr,X,M2,M3) & nrestrict(Xr,X,Y,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

