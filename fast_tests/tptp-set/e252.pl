use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET301-6.p
% Inverse commutes with restriction
restrict(Xr,Y,X,M1) & inv(M1,M2) & inv(Xr,M3) & nrestrict(M3,X,Y,M2) 

,2000,_CONSTR,_RES).

get_time(Tend).

