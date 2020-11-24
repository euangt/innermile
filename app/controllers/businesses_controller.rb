class BusinessesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index 
    @businesses = policy_scope(Business)
  end
end
