class HomeController < ApplicationController
  def index
    @districts = District.all
  end
  
  def info
  end
  
  def faq
  end
  
  def tos
  end
end
