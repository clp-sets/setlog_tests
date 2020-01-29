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
$ logtalk_tester
```

# Running only the fast tests

```bash
$ cd setlog_tests/fast_tests
$ logtalk_tester
```

# Running an individual test set (using e.g. SWI-Prolog)

```bash
$ cd test_set_directory
$ logtalk_tester
```

# Running a test set manually:

```bash
$ cd setlog_tests
$ swilgt
?- cd(test_set_directory).
?- {tester}.
```
