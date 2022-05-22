# Trackii

A skill tracking app.

### Application specs

#### Entities

* User
  + name string

* SkillGroup
  + name string
  + priority int
  + skillGroupId int?
  + userId long

* Skill
  + description string?
  + name string
  + skillGroupId int?
  + calculated: elapsedTime

* Goals
  + achieved bool
  + completionDate Date?
  + description string?
  + expectedCompletionDate Date?
  + name string
  + skillId int
  + calculated: elapsedTime long

* Session
  + description?
  + endDate Date?
  + startDate Date?
  + calculated: elapsedTime long

* Attachment
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

    protoc --dart_out=grpc:app/lib/generated -Iprotos protos/auth/auth.proto -Iprotos protos/skill/skill.proto -Iprotos protos/user/user.proto
