use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% idCup
un(A,B,N1) & id(N1,N2) & id(A,N3) & id(B,N4) & un(N3,N4,N2) & A neq {} & B neq {}
,2000,_CONSTR,_RES).

get_time(Tend).


