class Admin::SubjectsController < ApplicationController

  def new
    @subject = Subject.new
    @subject.thumnails.build
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to new_admin_subject_path, success: 'Success!'
    else
      render :new, warning: 'Failure!'
    end
  end

  private
    def subject_params
      params.require(:subject).permit(
        :name,
        :company,
        :occupation,
        :position,
        thumnails_attributes: [:id, :image, :status])
    end

end
