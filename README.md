![enter image description here](https://img.freepik.com/free-vector/programmers-working-project-website-development-methodology-technical-support_335657-2472.jpg?w=1060&t=st=1680285815~exp=1680286415~hmac=4462acf16b5c21499d9d5fbda2a42c182167982c103d1ad3aabc767c575b8ae4)

# DevPortal: A Holberton School Tulsa Capstone Project for DevOps

## Project Overview
This project is our [Holberton School Tulsa](https://classes.holbertontulsa.com/software-developer-lpb/?utm_term=holberton&utm_campaign=Branded+%7C+Search&utm_source=adwords&utm_medium=ppc&hsa_acc=2236026088&hsa_cam=12521055298&hsa_grp=123058220150&hsa_ad=505333222516&hsa_src=g&hsa_tgt=kwd-300668487307&hsa_kw=holberton&hsa_mt=p&hsa_net=adwords&hsa_ver=3&gad=1&gclid=CjwKCAjwov6hBhBsEiwAvrvN6FWqHZPs0qZj4XcUGyHmDSpRxwOLWMNHoGa7PbWNLQdICZEgTdoqbhoCpncQAvD_BwE) DevOps Capstone MVP. In this project, we created an infrastructure for CI/CD pipeline using [Hugo](https://gohugo.io/) and [Markdown](https://gohugo.io/content-management/front-matter/) to build a static site, [Make](https://www.gnu.org/software/make/manual/make.html) to automate all builds and deployment CLI's, [Docker](https://www.docker.com/) to create an custom image and container for continuous intergration of the site, [AWS](https://aws.amazon.com/free/?trk=fce796e8-4ceb-48e0-9767-89f7873fac3d&sc_channel=ps&ef_id=CjwKCAjwov6hBhBsEiwAvrvN6I-tEjVGjA30G3tpCTwjLnMfOSJWhJEY7n5sMZ0QixgtR7IS5MXZixoCaAkQAvD_BwE:G:s&s_kwcid=AL!4422!3!432339156150!e!!g!!aws!1644045032!68366401852&all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all) [EC2](https://aws.amazon.com/pm/ec2/?trk=36c6da98-7b20-48fa-8225-4784bced9843&sc_channel=ps&ef_id=CjwKCAjwov6hBhBsEiwAvrvN6FEbNIw722riAO6FvHkgLI9ZbIoLljzUHyKKoNkIjpAQJEJJgDAq3xoCCMMQAvD_BwE:G:s&s_kwcid=AL!4422!3!467723097970!e!!g!!ec2!11198711716!118263955828) & [IAM](https://aws.amazon.com/iam/) as another way to host our production and containers, [Terraform](https://www.terraform.io/) to automate and configure our EC2 instances, [GitHub Actions](https://github.com/actions) to establish workflows that test the build and deployment process, and [Netlify](https://www.netlify.com/) to host our domain and deploy a secure site (HTTPS) on the cloud with proper certifications.

The application is deployed on AWS using Elastic Beanstalk, which provides an easy-to-use platform for deploying and scaling containerized applications. Ansible is used to automate the process of provisioning AWS resources, such as EC2 instances, databases, and load balancers.

The project includes monitoring and logging tools, such as Prometheus and AWS CloudWatch for monitoring logs and troubleshooting issues.

## Architecture
The architecture of this application consists of the following components:

A Docker container that runs the todo list application
An AWS Elastic Beanstalk environment that hosts the Docker container
An AWS RDS database that stores the todo list data
An AWS Load Balancer that distributes incoming traffic across multiple instances


## Technologies Used
This application uses the following technologies:

Docker: Used to package the application into a container
AWS: Used to host the application on the cloud
Ansible: Used to automate the deployment process
Hugo: Used to build the web-based todo list application
GitHub Actions: Used to automate the build, deploy


## Conclusion
This project demonstrates my ability to use DevOps tools and techniques to deploy and manage containerized applications on the cloud. By using Docker, AWS, and Ansible, I have created an automated deployment pipeline that makes it easy to deploy, scale, and monitor a sample web application.

## Authors

[Courtney Brown</center>](https://github.com/cbmarie255)
[Brandon Brown</center>](https://github.com/bbrown585)
[Faizal Mahmah</center>](https://github.com/fmamah777)