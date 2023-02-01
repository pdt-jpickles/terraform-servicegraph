/* 
  PagerDuty Team Membership (see teams.tf and users.tf)
  Ref: https://www.terraform.io/docs/providers/pagerduty/r/team_membership.html 
*/

/* 
  Support
*/
resource "pagerduty_team_membership" "noah_cooper" {
  user_id = pagerduty_user.noah_cooper.id
  team_id = pagerduty_team.support.id
}

/* 
  Operations
*/
resource "pagerduty_team_membership" "paul_miller" {
  user_id = pagerduty_user.paul_miller.id
  team_id = pagerduty_team.operations.id
}

/* 
  IT Management
*/
resource "pagerduty_team_membership" "ronald_green" {
  user_id = pagerduty_user.ronald_green.id
  team_id = pagerduty_team.it_management.id
}


/* 
  Executive Stakeholders
*/
resource "pagerduty_team_membership" "julie_morgan" {
  user_id = pagerduty_user.julie_morgan.id
  team_id = pagerduty_team.executive.id
}