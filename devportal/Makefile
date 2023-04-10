build: ## Build hugo website
	hugo

package: build ## Package website and
	docker run --cidfile="cidFile" -v dist:/app/dist -v DevPortal-api:/app/DevPortal-api DevPortal:build zip -r DevPortal.zip dist DevPortal-api 

clean: ## Clean up the Dist directory
	rm -rf dist
	rm -rf ./DevPortal-api


