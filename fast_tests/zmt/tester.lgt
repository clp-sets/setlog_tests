
:- if(catch(os::command_line_arguments([logtalk]),_,fail)).

	:- if(current_prolog_flag(dialect, swi)).
		:- use_module(library(dialect/sicstus/timeout)).
	:- elif(current_prolog_flag(dialect, sicstus)).
		:- use_module(library(timeout)).
	:- endif.
	:- use_module(library(clpfd)).
	:- use_module(library(clpq)).

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
		% use default timeout + 1000 ms to compensate for running
		% the code in debug mode to collect code coverage data
		tests(setlog, 5000)::run
	)).

:- else.

	:- initialization((
		consult('../../../setlog/setlog.pl'),
		setlog:consult_lib,
		set_logtalk_flag(report, warnings),
		logtalk_load(lgtunit(loader)),
		logtalk_load(tests, [hook(lgtunit), optimize(on)]),
		tests(user, 4000)::run
	)).

:- endif.
