help: ## Makefile instructions: run 'make help' too see all automated commands. Please read through list for build and deployment instructions.
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done

clean: ## Clean up the repo before pushing to any platforms to create new data collection files.
	rm -rf dist
	rm new_ec2_instance_ip.txt

build-hugo: ## Build new hugo static site after all updates are made. Run 'hugo server' to check the site's health locally.
	hugo

package: build-hugo ## Package website and create /dist repo which contains the package. 
	hugo --minify

publish-netlify: ## Publish site to host on Netlify and follow the prompt with your Netlify sign-in information. Must run 'make clean' & 'make package' to deploy updates! (You may need to run 'sudo' with netlify-cli commands on your local environment.)
	netlify login
	netlify deploy --dir dist

confirm-netlify-publish:
	netlify deploy --prod

build-docker-image: ## Create new image for container. Make sure the dashboard is running in the background!
	docker login
	docker build -t devportal .

run-docker-container: ## Spin up a containerized environment on your local environment with everything you need from the site. Use 'exit' to get out the container.
	docker run -d -p 1313:1313 --name devportal_sandbox -it devportal /bin/bash

hugo-server: ## View the site locally in your container.
	hugo server --bind=0.0.0.0

create-EC2-instance: ## Create an EC2 instance using the awscli. Ensure Access Keys are saved on your local environment ONLY!
##  aws configure
##	./setupEC2.sh "$(./EC2_created.sh testy-test)"
##	./deploy.sh