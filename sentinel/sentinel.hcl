sentinel {
  features = {
    terraform = true
  }
}

mock "tfplan/v2" {
  module {
    source = "./mocks/plan.json"
  }
}

policy "check-ocp-private-endpoint" {
  source            = "./policies/check-ocp-private-endpoint.sentinel"
  enforcement_level = "hard-mandatory"
}
