use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL006+1.p
% For empty meet the converse slides over meet
inv(X0,M1) & un(M1,X1,{}) & inv(X1,M2) & nun(X0,M2,{})


,2000,_CONSTR,_RES).

get_time(Tend).

