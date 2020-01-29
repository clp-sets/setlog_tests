use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
%
% A <= C & B <= D --> cp(A,B) <= cp(C,D)
%
subset(A,C) & subset(B,D) &
nsubset(cp(A,B),cp(C,D))
 
,2000,_CONSTR,_RES).

get_time(Tend).

