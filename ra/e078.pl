use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Totality implies reflexivity
set(A) & subset(R,cp(A,A)) & id(A,IA) & inv(R,IR) & un(R,IR,cp(A,A)) & nsubset(IA,R)

,2000,_CONSTR,_RES).

get_time(Tend).

