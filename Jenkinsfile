pipeline {
	agent any

	stages {
	    	stage('Checkout') {
	        	steps {
				checkout scm			   
			      }
		    	}

		stage('Build') {
	        	steps {
				sh '/home/yamini/softwares/apache-maven-3.6.0/bin/mvn install'
	        	}
		}
		stage('Deployment') {
			steps {
				sh 'echo deployment is succussful!'
			}
		}


		
	}
}
