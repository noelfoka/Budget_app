class SplashController < ApplicationController
  def show
    if user_signed_in?
      redirect_to tran_groups_path
    else
      root_path
    end
  end
end
