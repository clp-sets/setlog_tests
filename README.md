# setlog_tests

Tests for setlog

# Requirements

- setlog
- Supported Prolog compiler (e.g. SWI-Prolog)
- Logtalk 3.34.0 or later

# Running all the tests

Assuming that both the `setlog` and `setlog_tests` repo directories are at the same level:

```bash
$ cd setlog_tests
$ logtalk_tester -p swi
```

# Running only the fast tests

```bash
$ cd setlog_tests/fast_tests
$ logtalk_tester -p swi
```

# Running an individual test set (using e.g. SWI-Prolog)

```bash
$ cd test_set_directory
$ logtalk_tester -p swi
```

# Running a test set manually (using e.g. SWI-Prolog):

```bash
$ cd setlog_tests
$ swilgt
?- cd(test_set_directory).
?- {tester}.
```

# Re-running a test set manually using a non-default timeout (e.g. 10000):

```bash
$ cd setlog_tests
$ swilgt
?- cd(test_set_directory).
?- {tester}.
...
?- tests(user, 10000)::run.
```

# Running the tests using the Logtalk version:

```bash
$ cd setlog_tests
$ logtalk_tester -p swi -g "logtalk_load(os(loader))" -- logtalk
```
```

# Generating code coverage reports:

```bash
$ cd setlog_tests
$ logtalk_tester -p swi -g "logtalk_load(os(loader))" -c xml -- logtalk
```

After, in each test set directory:

```bash
$ xsltproc -o coverage_report.html coverage_report.xml
```
