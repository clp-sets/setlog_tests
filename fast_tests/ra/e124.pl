use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Alternative definition of equivalence class (one implication)
inters(R,cp({A},E),M1) & nran(M1,C) & inters(R,cp({A},E),cp({A},C))
,2000,_CONSTR,_RES).

get_time(Tend).

