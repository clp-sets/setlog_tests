
:- initialization((
	consult('../../../setlog/setlog.pl'),
	setlog:consult_lib,
	set_logtalk_flag(report, warnings),
	logtalk_load(lgtunit(loader)),
	logtalk_load(tests, [hook(lgtunit), optimize(on)]),
	tests::run
)).
