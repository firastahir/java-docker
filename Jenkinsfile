pipeline {
  agent {
    kubernetes {
      label 'mypod'
      defaultContainer 'jnlp'
      yaml """
apiVersion: v1
kind: Pod
metadata:
  labels:
    some-label: some-label-value
spec:
  containers:
  - name: maven
    image: maven:3.3.9-jdk-8-alpine
    command: ['cat']
    tty: true
  - name: jnlp
    image: jnlp:alpine
    command: ['cat']
    tty: true
  - name: curl
    image: byrnedo/alpine-curl:latest
    command: ['cat']
    tty: true
  
"""
    }
  }
  
  stages {
    stage('Get certificate') {
      steps {
        container('jnlp') {
           sh "openssl s_client -showcerts -connect artifactory.ameren.com:443 </dev/null 2>/dev/null|openssl x509 -outform PEM > $WORKSPACE/artifactory.pem"
        }
        container('curl') {
          sh "curl -O https://confluence.atlassian.com/kb/files/779355358/779355357/1/1441897666313/SSLPoke.class"
        }
        }
    }
    stage('Run maven') {
      steps {
        container('maven') {
           sh 'mvn -version'
       
   	
         
  
        }
       
       
  }
}
}
}
