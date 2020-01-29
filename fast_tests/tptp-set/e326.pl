use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET425-6.p
% Single valued class alternate definition 1
pfun(Z) & [U,V] in cp(U1,U2) & [U,W] in cp(U1,U2) & [U,V] in Z & [U,W] in Z & V neq W

,2000,_CONSTR,_RES).

get_time(Tend).

