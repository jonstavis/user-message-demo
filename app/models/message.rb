class Message < ActiveRecord::Base

  belongs_to :to_user, :foreign_key => :to_user_id, :class_name => "User"
  belongs_to :from_user, :foreign_key => :from_user_id, :class_name => "User"

  has_many :message_attachments, :dependent => :destroy

  accepts_nested_attributes_for :message_attachments

  def self.collection
    @messages_collection ||= Message.all
  end

end
