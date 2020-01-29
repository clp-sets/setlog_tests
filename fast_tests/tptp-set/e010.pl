use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET010-1.p
% X \ Y ^ Z = (X \ Y) U (X \ Z)
inters(A,B,Aib) & diff(C,A,Cda) & diff(C,B,Cdb) & diff(C,Aib,Cd_aib) & nun(Cda,Cdb,Cd_aib)

,2000,_CONSTR,_RES).

get_time(Tend).

