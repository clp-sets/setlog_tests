use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% A*B neq {} ==> (pfun(A*B) <==> B = {X})
% A*B neq {} ==> (pfun(A*B) ==> B = {X})
cp(A,B) neq {} & pfun(cp(A,B)) & (B = {} or B = {M1,M2/M3} & M1 neq M2)

,2000,_CONSTR,_RES).

get_time(Tend).

