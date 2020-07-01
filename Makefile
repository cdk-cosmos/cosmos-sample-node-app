
image_tag := ${ECR_URL}:${APP_BUILD_VERSION}

build::
	@docker build -t ${image_tag} .

push::
	@docker push ${image_tag}

version::
	@echo v$(shell sh -c "node -p require\(\'./package.json\'\).version")-${CODEBUILD_BUILD_NUMBER}
