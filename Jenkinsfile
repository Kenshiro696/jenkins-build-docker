// 2020-04-21_8h38

def pipelineContext = [:]
node {
	def registryProjet='registry.gitlab.com/kenshiro69/jenkins'
	def IMAGE="${registryProjet}:version-${env.BUILD_ID}"
	echo "IMAGE = $IMAGE"
	
	stage('Clone') {
		checkout scm
	}
	def img = stage('Build') {
		docker.build("$IMAGE", '.')
	}
	stage('Run') {
		img.withRun("--name run-$BUILD_ID -p 8085:80") { c ->
			sh 'curl localhost:8085'
		}
	}
	stage('Push') {
		docker.withRegistry('https://registry.gitlab.com', 'reg1') {
			img.push 'latest'
			img.push()
		}
	}
}
