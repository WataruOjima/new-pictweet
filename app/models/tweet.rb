class Tweet < ApplicationRecord
  def index
    @tweets = Tweer.all
  end
end