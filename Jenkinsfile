node {
  git branch: 'main', url: 'https://github.com/SiwatINC/multicraft-daemon' // checks out Dockerfile and some project sources
  def image = docker.build "ghcr.io/siwatinc/multicraft-daemon:latest"
  image.push()
  docker.withRegistry("https://ghcr.io/v2") {
      image.push()
      docker.build("ghcr.io/siwatinc/multicraft-daemon:java8",'java8').push()
  }
}
