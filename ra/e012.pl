use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% All pairs in diversity have two distinct components
id(D,I) & un(I,Dvsty,cp(D,R)) & disj(I,Dvsty) & [X,X] in Dvsty


,2000,_CONSTR,_RES).

get_time(Tend).

