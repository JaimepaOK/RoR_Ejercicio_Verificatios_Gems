class ConfirmationsController < Devise::ConfirmationsController
	private
	def afther_confirmation_path_for(resource_name, resource)
		sing_in(resource)
		your_new_after_confirmation_path
	end
end