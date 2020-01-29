use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Alternative definition of equivalence class (one implication)
nrimg(R,{A},C) & subset(R,cp(E1,E2)) & A in E1 & id({A},M2) & comp(M2,R,M3) & ran(M3,C)
,2000,_CONSTR,_RES).

get_time(Tend).

