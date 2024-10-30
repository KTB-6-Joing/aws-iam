variable "group_name" {
  default     = "dev"
  description = "iam_group name for developers"
}

variable "group_policy_name" {
  default     = "dev_policy"
  description = "iam_group_policy name for developers"
}

variable "front" {
  default     = "frontend"
  description = "iam_username - frontend developer"
}

variable "back" {
  default     = "backend"
  description = "iam_user - backend developer"
}

variable "gen-ai" {
  default     = "gen-ai"
  description = "iam_user - GenAI developer"
}

variable "rec-ai" {
  default     = "rec-ai"
  description = "iam_user - RecSys developer"
}

variable "dev_role" {
  default     = "developer"
  description = "iam_tag_role developer"
}
