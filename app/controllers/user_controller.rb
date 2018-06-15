class UserController < ApplicationController
    def index
        @users = User.all # table에 잇는 모든 정보 조회한뒤 @users 에 담는다.
        # User 는 moldels/user.rb를 말한다.
    end

    def new
        
    end

    def create
        u1 = User.new
        u1.user_name = params[:user_name]
        u1.password = params[:password]
        u1.save
        redirect_to "/user/#{u1.id}"
    end
    
    def show
        @user = User.find(params[:id])
    end
    
    
end
