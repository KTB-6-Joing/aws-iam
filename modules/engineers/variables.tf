variable "group_name" {
  default     = "eng"
  description = "iam_group name for engineers"
}

variable "group_policy_name" {
  default     = "eng_policy"
  description = "iam_group_policy name for engineers"
}

variable "eng_role" {
  default     = "engineer"
  description = "iam_tag_role engineer"
}