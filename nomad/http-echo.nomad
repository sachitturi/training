job "http-echo-HashiDays-2017-tf-chicken" {
  datacenters = ["dc1"]

  group "echo" {
    task "server" {
      driver = "docker"

      config {
        image = "hashicorp/http-echo:0.2.1"
        args  = [
          "-listen", ":80",
          "-text", "hello world",
        ]
      }

      resources {
        network {
          mbits = 10
          port "http" {
            static = 80
          }
        }
      }

      service {
        name = "http-echo"
        port = "http"

        tags = [
          "HashiDays-2017-tf-chicken",
          "urlprefix-/http-echo",
        ]

        check {
          type     = "http"
          path     = "/health"
          interval = "10s"
          timeout  = "5s"
        }
      }
    }
  }
}
