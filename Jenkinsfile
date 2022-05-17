pipeline{
	agent any
	stages{
		stage('Compile'){
			steps{
				echo "Compile the project - 1"
				echo "Compile the project - 2"
			}
		}
		stage('Build'){
			steps{
				echo "Build the project"
				sh "mvn clean install"
				
				sh "docker build -t kavija/hellodocker:latest ."
				sh "echo '804f5e93-a31e-4a4d-a757-9d4dbe9590ad' | docker login -u kavija --password-stdin"
				sh 'docker push kavija/hellodocker:latest'
				sh 'docker logout'
			}
		}
		stage('Test'){
			steps{
				echo "Test the project"
			}
		}
		stage('Deploy'){
			steps{
				echo "Deploy the project"
			}
		}
	}
}
