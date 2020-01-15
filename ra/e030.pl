use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
A = {[1,a],[1,e],[3,i],[5,a],[5,i],[7,e],[7,a],[7,i],[9,e]} &
un(A,CA,cp({0,1,2,3,4,5,6,7,8,9},{a,b,c,d,e,f,g,h,i,j})) &
disj(A,CA)


,2000,_CONSTR,_RES).

get_time(Tend).

