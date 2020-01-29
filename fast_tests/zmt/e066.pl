use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% applyDres
pfun(F) & X in S & dom(F,N1) & X in N1 & dres(S,F,N2) & apply(N2,X,N3) & napply(F,X,N3)
,2000,_CONSTR,_RES).

get_time(Tend).

