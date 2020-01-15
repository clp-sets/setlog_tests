use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET035-3.p
% Maps for composition
pfun(Function1) & dom(Function1,A) & ran(Function1,M1) & subset(M1,B) & pfun(Function2) & dom(Function2,C) & ran(Function2,M2) & subset(M2,D) & M1 = C & comp(Function1,Function2,M3) & (ndom(M3,A) or nran(M3,M2))

,2000,_CONSTR,_RES).

get_time(Tend).

