class StaticPagesController < ApplicationController
  before_filter :authenticate_user!
  def home
    @title="Home"
  end

  def about
    @title="About"
  end

  def help
    @title="Help"
  end
  def contact
    @title="Contact"
  end
end
