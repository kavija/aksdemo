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
				
				sh "az login --service-principal -u 'efe1d7c3-4b21-4a24-835d-ccb30bad685d' -p 'z5CHZ~d2ysXNqD89W-kdPn-91Ur7yE_EsU' --tenant '0b5186f4-fa8a-4e51-86dc-63fa7f1e1952'"
				sh "az aks get-credentials --resource-group karthikAKS --name demo-aks"
				sh "kubectl apply -f deployment.yml"
			}
		}
	}
}
