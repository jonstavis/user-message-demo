class MessageAttachmentsController < ApplicationController
  # GET /message_attachments
  # GET /message_attachments.json
  def index
    @message_attachments = MessageAttachment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @message_attachments }
    end
  end

  # GET /message_attachments/1
  # GET /message_attachments/1.json
  def show
    @message_attachment = MessageAttachment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @message_attachment }
    end
  end

  # GET /message_attachments/new
  # GET /message_attachments/new.json
  def new
    @message_attachment = MessageAttachment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @message_attachment }
    end
  end

  # GET /message_attachments/1/edit
  def edit
    @message_attachment = MessageAttachment.find(params[:id])
  end

  # POST /message_attachments
  # POST /message_attachments.json
  def create
    @message_attachment = MessageAttachment.new(params[:message_attachment])

    respond_to do |format|
      if @message_attachment.save
        format.html { redirect_to @message_attachment, notice: 'Message attachment was successfully created.' }
        format.json { render json: @message_attachment, status: :created, location: @message_attachment }
      else
        format.html { render action: "new" }
        format.json { render json: @message_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /message_attachments/1
  # PUT /message_attachments/1.json
  def update
    @message_attachment = MessageAttachment.find(params[:id])

    respond_to do |format|
      if @message_attachment.update_attributes(params[:message_attachment])
        format.html { redirect_to @message_attachment, notice: 'Message attachment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @message_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_attachments/1
  # DELETE /message_attachments/1.json
  def destroy
    @message_attachment = MessageAttachment.find(params[:id])
    @message_attachment.destroy

    respond_to do |format|
      format.html { redirect_to message_attachments_url }
      format.json { head :no_content }
    end
  end
end
