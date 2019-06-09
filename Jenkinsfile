env.mvnHome = '/opt/apache-maven-3.6.1/'
node('working') {
   
   
   stage('Preparation') { // for display purposes
      
      git 'https://github.com/satwik123/springexample.git'
        
      
   }
   stage('Build') {
      
      if (isUnix()) {
         sh "'${mvnHome}/bin/mvn' -Pspring-deploy clean deploy"
      } else {
         bat(/"${mvnHome}\bin\mvn" -Dmaven.test.failure.ignore clean package/)
      }
   }
   stage('Results') {
      junit '**/target/surefire-reports/TEST-*.xml'
      archive 'target/*.jar'
   }
   

}
