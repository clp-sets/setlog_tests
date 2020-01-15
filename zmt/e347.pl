use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% nrresUnit
rares({[X,Y]},S,N1) & Y nin S & S neq {} & N1 = {[X,Y]}
,2000,_CONSTR,_RES).

get_time(Tend).

