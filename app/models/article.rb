class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :body, length: {minimum: 140 }

  def capitalize_title
    self.title = self.title.capitalize
  end
end
