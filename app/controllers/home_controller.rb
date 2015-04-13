require_relative 'instagram'

class HomeController < ApplicationController
  def index
    @insta = Instagram.new(ENV['ACCESS_TOKEN'])
  end
end
