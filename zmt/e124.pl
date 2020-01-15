use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% imageCup
un(S,T,N1) & rimg(R,N1,N2) & rimg(R,S,N3) & rimg(R,T,N4) & nun(N3,N4,N2)
,2000,_CONSTR,_RES).

get_time(Tend).

