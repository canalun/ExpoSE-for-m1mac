Z3_LIB = libz3.dylib
TARGET_PATH = ./Analyser/node_modules/z3javascript/bin/

all: gh-auth install replace

gh-auth:
	gh auth status || (echo 'gh authentication failed, please authenticate using "gh auth login"' && exit 1)

install: gh-auth
	./install

replace: install
	gh release download --repo Z3Prover/z3 --pattern '*arm64-osx*.zip'
	unzip -j 'z3-*-arm64-osx-*.zip' '*/bin/$(Z3_LIB)' -d $(TARGET_PATH)
	rm -f *arm64-osx*.zip
