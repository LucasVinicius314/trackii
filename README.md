# Trackii

A skill tracking app.

### Application specs

#### Entities

* User
  + id int
  + accountId string
  + displayName string
  + email string

* SkillGroup
  + id int
  + name string
  + priority int
  + skillGroupId int?
  + userId long

* Skill
  + id int
  + description string?
  + name string
  + skillGroupId int?
  + calculated: elapsedTime

* Goals
  + id int
  + achieved bool
  + completionDate Date?
  + description string?
  + expectedCompletionDate Date?
  + name string
  + skillId int
  + calculated: elapsedTime long

* Session
  + id int
  + description?
  + endDate Date?
  + startDate Date?
  + calculated: elapsedTime long

* Attachment
  + id int
  + description?
  + endDate Date?
  + sessionId int
  + startDate Date?
  + type enum
  + calculated: elapsedTime long

* enum AttachmentType
  + document
  + image
  + link

### Generate dart protocol buffers

    protoc --dart_out=grpc:app/lib/generated -Iprotos protos/auth/auth.proto -Iprotos protos/info/info.proto -Iprotos protos/skill/skill.proto -Iprotos protos/user/user.proto
