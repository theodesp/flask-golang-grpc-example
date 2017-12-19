# Project name
PROJECT=server

# Check for syntax errors
.PHONY: vet
vet:
	GOPATH=$(GOPATH) go vet .

.PHONY: format
format:
	@find . -type f -name "*.go*" -print0 | xargs -0 gofmt -s -w

.PHONY: debs
debs:
	GOPATH=$(GOPATH) go get ./...

.PHONY: test
test:
	GOPATH=$(GOPATH) go test

# Clean junk
.PHONY: clean
clean:
	GOPATH=$(GOPATH) go clean ./...