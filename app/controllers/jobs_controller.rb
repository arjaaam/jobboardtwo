class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false
  def new
    @job = Job.new
  end

  def show
  end
  def index
  end

  def create
      @job=Job.new(job_params)
      if @job.save
        flash[:notice]="Job was successfully created"
        redirect_to new_job_path
      else
        render 'new'
      end
  end

private

      def job_params
      params.permit(:title,:category_id,:jobtype,:headquarter,:region,:applylink,:description)
      end
end
