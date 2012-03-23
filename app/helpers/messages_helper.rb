module MessagesHelper
  def link_to_add_attachment(name,f)
    attachment = MessageAttachment.new
    fields = f.fields_for :message_attachments, attachment, :child_index => "new_attachment" do |builder|
      render "message_attachments/fields", :f => builder
    end
    link_to_function(name, "add_attachment(this, \"#{escape_javascript(fields)}\")")
  end
end
