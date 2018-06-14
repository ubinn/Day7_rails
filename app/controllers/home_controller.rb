class HomeController < ApplicationController
    
    def index
        @msg = "안녕 반가워"
    end

    def lotto
        @lotto = (1..45).to_a.sample(6)
    end
    def lunch
        @menu = {
            "20층" => "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Korea_Expressway_No.20.svg/1024px-Korea_Expressway_No.20.svg.png",
            "편의점"=>"http://pds.joins.com/news/component/htmlphoto_mmdata/201707/18/a913721b-49cf-4978-b405-88f95e61f9fc.jpg",
            "순남시래기"=>"http://soonnam.com/img/common/sec2_title1.png"
        }
        
        @lunch = @menu.keys.sample 
    
    end
end
