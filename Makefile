ifndef VERSION
$(error VERSION is not set)
endif

NAME = ktheory/cog-jq
TAG = $(NAME):$(VERSION)

build:
	docker build -t $(TAG) .

push: build
	docker push $(TAG)

release: push
	git tag $(VERSION)
	git push origin $(VERSION)
