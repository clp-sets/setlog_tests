use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
A = {[1,a],[1,b]} & 
un(A,CA,cp({0,1},{a,b})) &
disj(A,CA) 

,2000,_CONSTR,_RES).

get_time(Tend).

