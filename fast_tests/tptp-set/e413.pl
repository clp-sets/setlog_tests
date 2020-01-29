use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET544-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Corollary to application property 11
napply(Yf,M4,M3) & delay(pfun(Yf,false)) & comp(Xf,Yf,M1) & apply(M1,X,M3) & apply(Xf,X,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

