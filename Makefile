
CODEBUILD_RESOLVED_SOURCE_VERSION ?= $(shell git rev-parse HEAD)
image_tag := ${ECR_URL}:${APP_BUILD_VERSION}

version::
	@echo v$(shell node -p "require('./package.json').version")-$(shell echo ${CODEBUILD_RESOLVED_SOURCE_VERSION} | head -c 8)

build::
	@docker build -t ${image_tag} .

push::
	@docker push ${image_tag}
