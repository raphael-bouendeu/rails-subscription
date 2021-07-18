class UsersController < ApplicationController

 def index
    @pagy, @users = pagy(User.all.order(created_at: :desc))
 end

 def show
 @user=User.find(params[:id])
 flash[:notice]="You are on a users page"
 end
end
