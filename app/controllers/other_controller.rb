class OtherController < ApplicationController
  skip_before_action :authorize
  def questions
  end

  def news
  end

  def contact
  end
end
