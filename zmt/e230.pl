use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% imageMonotonic
subset(S,T) & subset(Q,R) & rimg(Q,S,N1) & rimg(R,T,N2) & subset(N1,N2) & S neq {} & T neq {} & Q neq {} & R neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

