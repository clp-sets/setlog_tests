use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET222-6.p
% Cross product property 4
inters(cp(W,X),cp(Y,Z),M1) & nsubset(M1,cp(W,Z))

,2000,_CONSTR,_RES).

get_time(Tend).

