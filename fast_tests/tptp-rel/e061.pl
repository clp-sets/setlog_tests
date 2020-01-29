use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL050+1.p
% The complement of x;TOP is left ideal
comp(X0,cp(U,U),M1) & un(M1,M2,cp(U,U)) & disj(M1,M2) & ncomp(M2,cp(U,U),M2)

,2000,_CONSTR,_RES).

get_time(Tend).


