use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET249-6.p
% Restriction property 2
restrict(Xr1,X,Y,M1) & restrict(Xr2,X,Y,M2) & un(M1,M2,M3) & un(Xr1,Xr2,M4) & nrestrict(M4,X,Y,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

