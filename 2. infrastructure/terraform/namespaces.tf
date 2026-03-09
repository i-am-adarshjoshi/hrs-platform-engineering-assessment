resource "kubernetes_namespace" "team_a" {
  metadata {
    name = "team-a"

    labels = {
      team = "team-a"
    }
  }
}

resource "kubernetes_namespace" "team_b" {
  metadata {
    name = "team-b"

    labels = {
      team = "team-b"
    }
  }
}