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
				sh 'sshpass -p "yamini" scp target/Pipeline.war yamini@172.17.0.3:/home/yamini/softwares/apache-tomcat-8.5.35/webapps'
			
				sh 'sshpass -p "yamini" ssh yamini@172.17.0.3 "JAVA_HOME=/home/yamini/softwares/jdk1.8.0_191" /home/yamini/softwares/apache-tomcat-8.5.35/bin/startup.sh'	
			}
		}


		
	}
}
