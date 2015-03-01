class Bucket < ActiveRecord::Base
  mount_uploaders :attachments, AttachmentUploader
  acts_as_tree order: "name"
end
