use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Alternative definition of equivalence class (one implication)
inters(R,cp({A},E2),M1) & ran(M1,C) & nrimg(R,{A},C) & subset(R,cp(E1,E2)) & A in E1
,2000,_CONSTR,_RES).

get_time(Tend).

