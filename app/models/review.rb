class Review < ApplicationRecord
  belongs_to :booking

  validates :content, presence: true

  def calculate_time
    time = self.created_at
    result = (((Time.now - time) / 60) / 60)
    if result < 1
      result = ((Time.now - time) / 60)
      if result < 1
        result = (Time.now - time).round
        "sent #{result.floor} #{'seconde'.pluralize(result.floor)} ago"
      elsif result < 60
        "sent #{result.floor} #{'minute'.pluralize(result.floor)} ago"
      end
    elsif result < 24
      "sent #{result.floor} #{'hour'.pluralize(result.floor)} ago"
    else
      result =  result / 24
      "sent #{result.floor} #{'day'.pluralize(result.floor)} ago"
    end
  end

end
