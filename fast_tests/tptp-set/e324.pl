use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET415-6.p
% Composition with singleton function 1
dom(Z,M1) & Y in M1 & rimg(Z,{Y},M3) & ncomp({[X,Y]},Z,M4) & comp({[X,X]},M4,M4) & ran(M4,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

