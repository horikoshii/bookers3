class UsersController < ApplicationController

  private

  def user_params
    params.require(:user).permit(:name, :profile_image,:introduction)
  end
end
