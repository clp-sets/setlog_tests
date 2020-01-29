use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% A*B neq {} ==> (pfun(A*B) <==> B = {X})
% A*B neq {} ==> (pfun(A*B) <== B = {X})
cp(A,B) neq {} & npfun(cp(A,B)) & B = {M1}

,2000,_CONSTR,_RES).

get_time(Tend).

