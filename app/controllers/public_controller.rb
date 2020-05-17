class PublicController < ApplicationController
	before_action :load_followup, only: :index

  def index
  end

  private

  def load_followup
  	@followup = Followup.order("created_at desc").limit(5)
  end

end
