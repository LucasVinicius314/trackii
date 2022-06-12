# Trackii

A skill tracking app.

### Application specs

#### Entities

* User
  + id long
  + accountId string
  + displayName string
  + email string

* SkillGroup
  + id long
  + name string
  + priority int
  + skillGroupId long?
  + userId long

* Skill
  + id long
  + description string?
  + name string
  + skillGroupId long?
  + calculated: elapsedTime

* Goals
  + id long
  + achieved bool
  + completionDate Date?
  + description string?
  + expectedCompletionDate Date?
  + name string
  + skillId long
  + calculated: elapsedTime long

* Session
  + id long
  + description string?
  + endDate Date?
  + startDate Date?
  + calculated: elapsedTime long

* Attachment
  + id long
  + description string?
  + endDate Date?
  + sessionId long
  + startDate Date?
  + type enum
  + calculated: elapsedTime long

* enum AttachmentType
  + document
  + image
  + link

### Generate dart protocol buffers

    protoc --dart_out=grpc:app/lib/generated -Iprotos protos/auth/auth.proto -Iprotos protos/info/info.proto -Iprotos protos/skill/skill.proto -Iprotos protos/user/user.proto
