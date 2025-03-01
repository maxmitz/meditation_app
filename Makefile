gen:
	dart run build_runner build --delete-conflicting-outputs

translations:
	flutter gen-l10n

test_coverage:
	flutter test --coverage
	lcov --remove coverage/lcov.info 'lib/constants/*' 'lib/*/*gr.dart' 'lib/model/classes/*' 'lib/model/apis/*' 'lib/view/*' -o coverage/new_lcov.info
	genhtml coverage/new_lcov.info --output=coverage
	open coverage/index.html

goldens:
	flutter test --update-goldens

update:
	flutter pub upgrade --major-versions

get:
	flutter pub get
