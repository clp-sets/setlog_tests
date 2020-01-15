use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET335-6.p
% Image property 1
dom(Z,M1) & inters(X,M1,{}) & nrimg(Z,X,{})

,2000,_CONSTR,_RES).

get_time(Tend).

