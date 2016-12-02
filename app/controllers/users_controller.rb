class UsersController < ApplicationController
  def show
    # TODO: This should require the user to be logged in
    @user = current_user
  end
end
