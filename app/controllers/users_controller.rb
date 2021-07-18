class UsersController < ApplicationController

 def index
  @q = User.order(created_at: :desc).ransack(params[:q])
  @pagy,@users =pagy( @q.result(distinct: true))
 end

 def show
 @user=User.find(params[:id])
 flash[:notice]="You are on a users page"
 end
end
