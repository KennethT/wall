class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)
    respond_to do |format|
      if @submission.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
        format.js   {}
        format.json { render json: @submission, status: :created, location: @submission }
      else
        format.html { render action: "new" }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end

  end

  def submission_params
    params.require(:submission).permit(:post)
  end

end
