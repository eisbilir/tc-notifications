 -- rename "topic" column to "topicOld"
  ALTER TABLE "public"."NotificationSettings"
      RENAME COLUMN "topic" TO "topicOld";

  ALTER TABLE "public"."NotificationSettings"
      ALTER COLUMN "topicOld" DROP NOT NULL;

  -- add "topic" column 
  ALTER TABLE "public"."NotificationSettings"
      ADD COLUMN "topic" character varying(255) NOT NULL;


UPDATE "NotificationSettings" SET topic='connect.notification.project.timeline.milestone.transition.completed' WHERE "topicOld"='connect.action.timeline.milestone.transition.completed'
UPDATE "NotificationSettings" SET topic='connect.notification.project.product.update.spec' WHERE "topicOld"='connect.action.project.product.update.spec'
UPDATE "NotificationSettings" SET topic='connect.notification.project.created' WHERE "topicOld"='notifications.connect.project.created'
UPDATE "NotificationSettings" SET topic='connect.notification.project.post.created' WHERE "topicOld"='notifications.connect.project.post.created'
UPDATE "NotificationSettings" SET topic='connect.notification.project.phase.transition.active' WHERE "topicOld"='notifications.connect.project.phase.transition.active'
UPDATE "NotificationSettings" SET topic='connect.notification.project.approved' WHERE "topicOld"='notifications.connect.project.approved'
UPDATE "NotificationSettings" SET topic='connect.notification.project.post.edited' WHERE "topicOld"='notifications.connect.project.post.edited'
UPDATE "NotificationSettings" SET topic='connect.notification.project.plan.updated' WHERE "topicOld"='connect.action.project.plan.updated'
UPDATE "NotificationSettings" SET topic='connect.notification.project.topic.created' WHERE "topicOld"='notifications.connect.project.topic.created'
UPDATE "NotificationSettings" SET topic='connect.notification.project.member.managerJoined' WHERE "topicOld"='notifications.connect.project.member.managerJoined'
UPDATE "NotificationSettings" SET topic='connect.notification.project.specificationModified' WHERE "topicOld"='notifications.connect.project.specificationModified'
UPDATE "NotificationSettings" SET topic='connect.notification.project.canceled' WHERE "topicOld"='notifications.connect.project.canceled'
UPDATE "NotificationSettings" SET topic='connect.notification.project.active' WHERE "topicOld"='notifications.connect.project.active'
UPDATE "NotificationSettings" SET topic='connect.notification.project.updated.spec' WHERE "topicOld"='connect.action.project.updated.spec'
UPDATE "NotificationSettings" SET topic='connect.notification.project.phase.update.payment' WHERE "topicOld"='notifications.connect.project.phase.update.payment'
UPDATE "NotificationSettings" SET topic='connect.notification.project.linkCreated' WHERE "topicOld"='notifications.connect.project.linkCreated'
UPDATE "NotificationSettings" SET topic='connect.notification.project.member.invite.rejected' WHERE "topicOld"='notifications.connect.project.member.invite.rejected'
UPDATE "NotificationSettings" SET topic='connect.notification.project.completed' WHERE "topicOld"='notifications.connect.project.completed'
UPDATE "NotificationSettings" SET topic='connect.notification.project.phase.update.scope' WHERE "topicOld"='notifications.connect.project.phase.update.scope'
UPDATE "NotificationSettings" SET topic='connect.notification.project.member.invite.requested' WHERE "topicOld"='notifications.connect.project.member.invite.requested'
UPDATE "NotificationSettings" SET topic='connect.notification.project.paused' WHERE "topicOld"='notifications.connect.project.paused'
UPDATE "NotificationSettings" SET topic='connect.notification.project.plan.ready' WHERE "topicOld"='connect.action.project.plan.ready'
UPDATE "NotificationSettings" SET topic='connect.notification.project.member.copilotJoined' WHERE "topicOld"='notifications.connect.project.member.copilotJoined'
UPDATE "NotificationSettings" SET topic='connect.notification.project.topic.deleted' WHERE "topicOld"='notifications.connect.project.topic.deleted'
UPDATE "NotificationSettings" SET topic='connect.notification.project.submittedForReview' WHERE "topicOld"='notifications.connect.project.submittedForReview'
UPDATE "NotificationSettings" SET topic='connect.notification.project.member.invite.approved' WHERE "topicOld"='notifications.connect.project.member.invite.approved'
UPDATE "NotificationSettings" SET topic='connect.notification.project.member.assignedAsOwner' WHERE "topicOld"='notifications.connect.project.member.assignedAsOwner'
UPDATE "NotificationSettings" SET topic='connect.notification.project.phase.transition.completed' WHERE "topicOld"='notifications.connect.project.phase.transition.completed'
UPDATE "NotificationSettings" SET topic='connect.notification.project.member.removed' WHERE "topicOld"='notifications.connect.project.member.removed'
UPDATE "NotificationSettings" SET topic='connect.notification.project.timeline.milestone.transition.active' WHERE "topicOld"='connect.action.timeline.milestone.transition.active'
UPDATE "NotificationSettings" SET topic='connect.notification.project.timeline.milestone.waiting.customer' WHERE "topicOld"='connect.action.timeline.milestone.waiting.customer'
UPDATE "NotificationSettings" SET topic='connect.notification.project.member.joined' WHERE "topicOld"='notifications.connect.project.member.joined'
UPDATE "NotificationSettings" SET topic='connect.notification.project.fileUploaded' WHERE "topicOld"='notifications.connect.project.fileUploaded'
UPDATE "NotificationSettings" SET topic='connect.notification.project.phase.update.progress' WHERE "topicOld"='notifications.connect.project.phase.update.progress'
UPDATE "NotificationSettings" SET topic='connect.notification.project.post.deleted' WHERE "topicOld"='notifications.connect.project.post.deleted'
UPDATE "NotificationSettings" SET topic='connect.notification.project.member.left' WHERE "topicOld"='notifications.connect.project.member.left'
