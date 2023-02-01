terraform {
  required_version = ">= 0.13.0"
  required_providers {
    pagerduty = {
      source = "PagerDuty/pagerduty"
      version = "2.7.0"
    }
  }
}

output "ops_esc_pol_id" {
  value = pagerduty_escalation_policy.operations.id
}

output "support_esc_pol_id" {
  value = pagerduty_escalation_policy.support.id
}