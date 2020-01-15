use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET243-6.p
% Restriction property 1
restrict(Xf,X1,Y1,M1) & restrict(M1,X2,Y2,M2) & inters(X1,X2,M3) & inters(Y1,Y2,M4) & nrestrict(Xf,M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

