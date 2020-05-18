class PublicController < ApplicationController
	before_action :load_followup, only: :index

  def index
  end

  private

  def load_followup
    @followup = Followup.paginate(page: params[:page], per_page: 5)
  end

end
