class InteractionsController < ApplicationController
	def create
		# @interaction = Interaction.new(interaction_params)
		# @interaction.user_one_id = current_user
		# @interaction.save

		Interaction.create(user_one_id: current_user.id, user_two_id: params[:user_two_id], like: params[:like])
			

		redirect_to search_path
	end

	private

	def interaction_params
		params.permit(:user_one_id, :user_two_id, :like)
	end
end
