class User < ActiveRecord::Base

  validates_presence_of :full_name, :email
  validates_uniqueness_of :email
  validates_format_of   :email, :with => /(^([^@\s]+)@((?:[-_a-z0-9]+\.)+[a-z]{2,})$)|(^$)/i

  before_validation :strip_whitespace

  has_many :messages_to, :foreign_key => :to_user_id, :class_name => "Message"
  has_many :messages_from, :foreign_key => :from_user_id, :class_name => "Message"

  def self.collection
    @users_collection ||= User.all
  end

  private
  def strip_whitespace
    self.full_name.strip! if self.full_name.respond_to? 'strip'
    self.email.strip! if self.email.respond_to? 'strip'
  end

end
