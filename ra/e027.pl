use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
%
% A*B (+) C*D neq (A (+) C) * (B (+) D)
%
un(cp(A,B),cp(C,D),I1) &
un(A,C,I21) &
un(B,D,I22) &
I1 neq cp(I21,I22)


,2000,_CONSTR,_RES).

get_time(Tend).

