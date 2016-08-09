class HomeController < ApplicationController
  
  autocomplete :district, :name, :full => true
  
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
