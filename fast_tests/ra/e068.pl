use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Tarski p. 77 (XIV)
id(A,IA) & un(IA,DVST,cp(A,B)) & disj(IA,DVST) & un(IA,CIA,cp(A,B)) & disj(IA,CIA) & DVST neq CIA

,2000,_CONSTR,_RES).

get_time(Tend).

