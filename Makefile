PROJECT_ID = qwik-temp

.PHONY: create-svc-account
create-svc-account:
	@echo "Creating service account"
	gcloud iam service-accounts create tf-tutorial \
		--description "service account for terraform tutorial" \
		--display-name "Terraform Cloud";

.PHONY: gcloud-init
gcloud-init:
	@echo "Initializing gcloud"
	gcloud init

.PHONY: set-binding
set-binding:
	@echo "Setting binding"
	gcloud projects add-iam-policy-binding $(PROJECT_ID) \
		--member "serviceAccount:tf-tutorial@$(PROJECT_ID).iam.gserviceaccount.com" \
		--role "roles/compute.instanceAdmin.v1";

.PHONY: list_google_os_images
list_google_os_images:
	@echo "Listing Google OS images"
	@gcloud compute images list  | grep 'debian\|NAME\|ubuntu'