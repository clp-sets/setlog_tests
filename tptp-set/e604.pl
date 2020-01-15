use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET762+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : The image of empty set is empty
pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & nrimg(F,{},{})

,2000,_CONSTR,_RES).

get_time(Tend).

