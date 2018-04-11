default: jest-screenshot native-image-diff hyrest node-libpng test-decorators

.PHONY: submodules
submodules:
	git submodule update --init --recursive --remote

.PHONY: jest-screenshot
jest-screenshot: submodules
	make -C repositories/jest-screenshot/ docs
	rm -rf jest-screenshot/docs
	cp -r repositories/jest-screenshot/docs jest-screenshot/docs
	git add jest-screenshot
	git commit -m "Update documentation for jest-screenshot"

.PHONY: native-image-diff
native-image-diff: submodules
	make -C repositories/native-image-diff/ docs
	rm -rf native-image-diff/docs
	cp -r repositories/native-image-diff/docs native-image-diff/docs
	git add native-image-diff
	git commit -m "Update documentation for native-image-diff"

.PHONY: hyrest
hyrest: submodules
	make -C repositories/hyrest/ docs
	rm -rf hyrest/docs
	cp -r repositories/hyrest/docs hyrest/docs
	git add hyrest
	git commit -m "Update documentation for hyrest"

.PHONY: node-libpng
node-libpng: submodules
	make -C repositories/node-libpng/ docs
	rm -rf node-libpng/docs
	cp -r repositories/node-libpng/docs node-libpng/docs
	git add node-libpng
	git commit -m "Update documentation for node-libpng"

.PHONY: test-decorators
test-decorators: submodules
	make -C repositories/test-decorators/ docs
	rm -rf test-decorators/docs
	cp -r repositories/test-decorators/docs test-decorators/docs
	git add test-decorators
	git commit -m "Update documentation for test-decorators"
