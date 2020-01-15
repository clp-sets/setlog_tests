use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% nrresCross
Y in B & diff(cp(A,B),cp(A,{Y}),M1) & nrares(cp(A,B),{Y},M1)
,2000,_CONSTR,_RES).

get_time(Tend).

