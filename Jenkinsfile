environment {
    PROJECT = "pro1"
    APP_NAME = "maventest"
    FE_SVC_NAME = "${APP_NAME}"
    CLUSTER = "jenkins"
    CLUSTER_ZONE = "us-central1-c"
    IMAGE_TAG = "us.gcr.io/${PROJECT}/${APP_NAME}:latest
  }

  agent {
    kubernetes {
      label 'sample-app'
      defaultContainer 'jnlp'
      yaml """
apiVersion: v1
kind: Pod
metadata:
labels:
  component: ci
spec:
  # Use service account that can deploy to all namespaces
  
  containers:
  - name: maven
    image: us.gcr.io/pro1-265115/maven
    command:
    - cat
    tty: true
  - name: gcloud
    image: us.gcr.io/pro1-265115/gcloud
    command:
    - cat
    tty: true
  - name: helm
    image: us.gcr.io/pro1-265115/helm3
    command:
    - cat
    tty: true
"""
}
  }

