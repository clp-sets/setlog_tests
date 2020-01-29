use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET552-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Application property 20
pfun(Xf) & id(U,M1) & inters(Xf,M1,M2) & dom(M2,M3) & subset(X,M3) & nrimg(Xf,X,X)

,2000,_CONSTR,_RES).

get_time(Tend).

