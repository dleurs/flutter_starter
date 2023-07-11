generate: #Generate retrofit and injectable/getit
	fvm dart run build_runner build --delete-conflicting-outputs
tests:
	fvm flutter analyze
	rm -rf test/coverage/coverage
	fvm flutter test --coverage test/all_tests.dart --coverage-path test/coverage/coverage
