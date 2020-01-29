use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% nrresUnit
rares({[X,Y]},S,N1) & (Y in S & N1 neq {} or Y nin S & N1 neq {[X,Y]})
,2000,_CONSTR,_RES).

get_time(Tend).

