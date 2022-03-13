class Api::V1::UsersController < ApplicationController

  def index
    users = User.all 
    render json: {
      data: ActiveModelSerializers::SerializableResource.new(users, each_serializer: UserSerializer)
    }
  end

  def create
    user = User.new(user_params)
    if user.save
      token = encode_token(user_id: user.id)
      render json: {
        user: ActiveModelSerializers::SerializableResource.new(user, each_serializer: UserSerializer),
        jwt: token
      }
    else
      render json: { 
        error: user.errors.full_messages
      }, 
        status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
