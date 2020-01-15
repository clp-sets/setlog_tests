use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET258-6.p
% Domain alternate definition 1
dom(Xr,M1) & X in M1 & range(Xr,X,U2,M2) & [X,M2] nin cp(U1,U2) & subset(Xr,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

