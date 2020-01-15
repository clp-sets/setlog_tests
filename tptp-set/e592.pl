use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET745+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : Problem on composition of mappings 10
delay(pfun(F1) & dom(F1,A1) & ran(F1,M1) & subset(M1,B) & pfun(F2) & dom(F2,A2) & ran(F2,M2) & subset(M2,B) & pfun(F) & dom(F,M3) & ran(F,M4) & subset(M4,B),false) & dfes(A1,F1,F) & dfes(A2,F2,F) & un(A1,A2,M3) & inters(A1,A2,M5) & dfes(M5,F1,M6) & ndfes(M5,F2,M6)

,2000,_CONSTR,_RES).

get_time(Tend).

