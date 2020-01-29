
:- if(catch(os::command_line_arguments([logtalk]),_,fail)).

	:- use_module(library(dialect/sicstus/timeout)).
	:- use_module(library(clpfd)).
	:- use_module(library(clpq)).

	:- op(980,xfx,:).
	:- op(970,xfy,or).
	:- op(950,xfy,&).
	:- op(900,fy,[neg,naf]).
	:- op(800,xf,!).
	:- op(700,xfx,[in,neq,nin]).
	:- op(670,xfx,\).
	:- op(650,yfx,[with,mwith]).
	:- op(150,fx,*).

	:- initialization((
		logtalk_load('../../../setlog/setlog.lgt', [source_data(on), debug(on)]),
		setlog::consult_lib,
		set_logtalk_flag(report, warnings),
		logtalk_load(lgtunit(loader)),
		logtalk_load(tests, [hook(lgtunit), optimize(on)]),
		tests(setlog)::run
	)).

:- else.

	:- initialization((
		consult('../../../setlog/setlog.pl'),
		setlog:consult_lib,
		set_logtalk_flag(report, warnings),
		logtalk_load(lgtunit(loader)),
		logtalk_load(tests, [hook(lgtunit), optimize(on)]),
		tests(user)::run
	)).

:- endif.
