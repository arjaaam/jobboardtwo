class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false
  before_action :index_category
  def new
    #  @category=Category.all
      @job = Job.new
      @company = Company.new

  end

  def show

  end
  def index

#  @company=Company.all.order(created_at: :desc)#.include(:jobs)
  #  if params[:category].blank?

      @job=Job.all.order(created_at: :desc)#.group(@category.name)#.count.map{ |k,v| k << v }#.map{ |k,v| [k.first,k.last,v.length]}

      #(:category_id)#.group_by{:title}#.include(:jobs)
  #  else
      #@category_id=Category.find_by(name: params[:category]).id
    #  @job=Job.where[category_id: @category_id].order(created_at: :desc)
#    end

  end

  def create
      @job=Job.new(job_params)
      @job.save
          @company=Company.new(company_params)
          @company.job_id=@job.id
        if @company.save
          flash[:notice]="Job was successfully created"
          redirect_to jobs_path
        else
          render 'new'
        #  redirect_to new_job_path
        end

  end

private

      def job_params
        params.permit(:title,:category_id,:jobtype,:headquarter,:region,:applylink,:description)
      end
      def company_params
        params.permit(:name,:company_statement,:logo,:url,:email,:company_description)
      end
      def index_category
          @category=Category.all
      end
end
