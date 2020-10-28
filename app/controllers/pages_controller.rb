class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      redirect_to items_path
    else
      redirect_to new_user_session_path
    end
  end
end
