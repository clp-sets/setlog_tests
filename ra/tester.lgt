
:- initialization((
	consult('../../setlog/setlog.pl'),
	set_logtalk_flag(report, warnings),
	logtalk_load(lgtunit(loader)),
	logtalk_load(tests, [hook(lgtunit), optimize(on)]),
	% 2000 is the default timout for the tests
	tests(2000)::run
)).
