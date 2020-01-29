use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% R;U*U = dom(R)*U
subset(R,cp(U,U)) & dom(R,DR) & ncomp(R,cp(U,U),cp(DR,U))

,2000,_CONSTR,_RES).

get_time(Tend).

