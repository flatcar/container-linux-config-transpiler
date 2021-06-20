# kernel-style V=1 build verbosity
ifeq ("$(origin V)", "command line")
       BUILD_VERBOSE = $(V)
endif

ifeq ($(BUILD_VERBOSE),1)
       Q =
else
       Q = @
endif

VERSION=$(shell git describe --dirty)
REPO=github.com/kinvolk/container-linux-config-transpiler
LD_FLAGS="-w -X $(REPO)/internal/version.Raw=$(VERSION)"

GO_SOURCES=$(shell find . -name "*.go")

export CGO_ENABLED:=0

.PHONY: all
all: bin/ct

.PHONY: test
test:
	$(Q)./test

.PHONY: vendor
vendor:
	$(Q)go mod vendor

.PHONY: clean
clean:
	$(Q)rm -rf bin

.PHONY: release_aarch64
release_aarch64 := \
	bin/ct-$(VERSION)-aarch64-unknown-linux-gnu

.PHONY: release_x86_64
release_x86_64 := \
	bin/ct-$(VERSION)-x86_64-unknown-linux-gnu \
	bin/ct-$(VERSION)-x86_64-apple-darwin \
	bin/ct-$(VERSION)-x86_64-pc-windows-gnu.exe

.PHONY: release
release: $(release_aarch64) $(release_x86_64)

bin/ct-%-aarch64-unknown-linux-gnu: GOARGS = GOOS=linux GOARCH=arm64

bin/ct-%-x86_64-unknown-linux-gnu: GOARGS = GOOS=linux GOARCH=amd64
bin/ct-%-x86_64-apple-darwin: GOARGS = GOOS=darwin GOARCH=amd64
bin/ct-%-x86_64-pc-windows-gnu.exe: GOARGS = GOOS=windows GOARCH=amd64

bin/%: $(GO_SOURCES)
	$(Q)$(GOARGS) go build -mod vendor -o $@ -ldflags $(LD_FLAGS) $(REPO)/internal
