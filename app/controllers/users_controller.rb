class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      redirect_to root_path, notice: "Recibiras Consejos Saludables en tu email :)"
    end
  end

  private

    def user_params
      params.require(:user).permit(:email)
    end
end
