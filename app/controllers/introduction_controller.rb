class IntroductionController < ApplicationController
  skip_before_action :user_signed_in?

  def index
  end
end
