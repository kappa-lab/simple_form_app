build-debug:
	flutter build apk --debug

test:
	flutter test

run-mobile:
# find device id `flutter devices`
	flutter run -d #find %device_id%

run-web:
	flutter run -d chrome

.PHONY: build test run
