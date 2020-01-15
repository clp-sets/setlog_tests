use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL049+1.p
% Join splitting
subset(X0,X1) & subset(X2,X1) & un(X0,X2,M1) & nsubset(M1,X1)

,2000,_CONSTR,_RES).

get_time(Tend).

