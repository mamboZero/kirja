class PublicController < ApplicationController
	before_action :load_followup, only: :index

  def index
  end

  private

  def load_followup
    @followups = Followup.paginate(page: params[:page], per_page: 5, :order => 'created_at DESC')
  end

end
