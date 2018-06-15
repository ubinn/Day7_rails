class AskController < ApplicationController
    def index
        @questions = Ask.all

    end
    
    def new
        p request.ip
        #request 라는 객체에서 ip주소를 가져오는건 .ip
        p request.location.region
    end
    
    def create
        ask = Ask.new
        ask.question = params[:question]
        ask.ip_address = request.ip
        ask.region = request.location.region
        ask.save
        redirect_to "/ask"
    end
    def show
        @msg = Ask.find(params[:id])
    end
    def delete
        ask = Ask.find(params[:id])
        # ask.question = "다른내용"     수정해주려고 그랫나부다
        # ask.save
        ask.destroy
        redirect_to "/ask"
    end
    
    def edit
        @ask = Ask.find(params[:id])
    end
    
    def update
        ask = Ask.find(params[:id])
        ask.question = params[:question]
        ask.save
        redirect_to '/ask'
    end
    
    
    
end
