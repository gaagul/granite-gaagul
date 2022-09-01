# frozen_string_literal: true

class UsersController < ApplicationController
  # previous code

  def create
    user = User.new(user_params)
    user.save!
    respond_with_success(t("successfully_created", entity: "User"))
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
