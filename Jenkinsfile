node {
	def app
		stage('Clone') {
			checkout scm
		}
		stage('Build image')
			app = docker.build("seng/nginx")
		}
		stage('Test image') {
			docker.image('seng/nginx').withRun('-p 8085:80') { c ->
			sh 'docker ps'
			sh 'curl localhost:8085'
		}
}
