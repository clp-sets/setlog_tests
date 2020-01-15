use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET250-6.p
% Corollary to restriction property 2
restrict(X,Y,Y,M1) & inv(M1,M2) & un(M1,M2,M3) & inv(X,M4) & un(X,M4,M5) & nrestrict(M5,Y,Y,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

