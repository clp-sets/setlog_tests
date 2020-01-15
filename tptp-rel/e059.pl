use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL048+1.p
% Join splitting
un(X0,X1,M1) & subset(M1,X2) & (nsubset(X0,X2) or nsubset(X1,X2))

,2000,_CONSTR,_RES).

get_time(Tend).

