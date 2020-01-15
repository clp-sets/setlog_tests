use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET272-6.p
% Domain property 3
dom(Xr,M1) & inters(M1,X,M2) & restrict(Xr,M2,Y,M3) & nrestrict(Xr,X,Y,M3) 

,2000,_CONSTR,_RES).

get_time(Tend).

