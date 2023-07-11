generate: #Generate retrofit and injectable/getit
	fvm dart run build_runner build --delete-conflicting-outputs
tests:
	fvm flutter analyze
	rm -rf test/coverage
	mkdir test/coverage
	fvm flutter test --coverage test/all_tests.dart --coverage-path test/coverage/lcov.info
	
	remove_from_coverage -f test/coverage/lcov.info -r '\.g\.dart'
	remove_from_coverage -f test/coverage/lcov.info -r '/data_sources/*'
	genhtml test/coverage/lcov.info -o test/coverage
	open test/coverage/index.html
