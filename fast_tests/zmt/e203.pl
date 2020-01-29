use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% domComp
comp(Q,R,N1) & dom(N1,N2) & dom(R,N3) & inv(Q,N4) & rimg(N4,N3,N2) & Q neq {} & R neq {}
,2000,_CONSTR,_RES).

get_time(Tend).


