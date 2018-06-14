class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception # 토근이 넘어왔는지 안넘어왔는지 확인하는 코드

end
