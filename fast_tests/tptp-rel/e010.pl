use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL007+1.p
% For empty meet the converse slides over meet
inv(X1,M1) & un(X0,M1,{}) & inv(X0,M2) & nun(M2,X1,{})


,2000,_CONSTR,_RES).

get_time(Tend).

