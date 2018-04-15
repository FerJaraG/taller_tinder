class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def interaction_params
		params.require(:interaction).permit(:user_one_id, :user_two_id, :like)
	end
end
