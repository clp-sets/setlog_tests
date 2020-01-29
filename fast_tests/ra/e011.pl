use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
%
% The complement of the complement of R is R
%
un(R,S,cp(A,B)) & disj(R,S) &
un(S,T,cp(A,B)) & disj(S,T) &
T neq R


,2000,_CONSTR,_RES).

get_time(Tend).

