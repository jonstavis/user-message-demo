class MessageAttachment < ActiveRecord::Base

  belongs_to :message

  # saved at a default location of :rails_root/public/system/:attachment/:id/:style/:filename
  # in this simple example, :style is always "original", and :attachment is "data"
  has_attached_file :data,
    :content_type => ['image/jpeg', 'image/pjpeg', 'image/jpg', 'image/png']
end
