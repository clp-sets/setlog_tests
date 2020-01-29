use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Total same domain and range
inv(R,N1) & un(R,N1,cp(X,X)) & A in X & B in X & [A,B] nin R & [B,A] nin R

,2000,_CONSTR,_RES).

get_time(Tend).

