use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% fullImage
dom(R,N1) & subset(N1,S) & nran(R,N3) & rimg(R,S,N3)
,2000,_CONSTR,_RES).

get_time(Tend).

