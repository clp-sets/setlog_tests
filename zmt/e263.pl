use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% pinjApplicationsEqual
pfun(F) & inv(F,N1) & pfun(N1) & dom(F,N2) & X in N2 & Y in N2 & apply(F,X,N3) & apply(F,Y,N3) & X = Y & F neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

