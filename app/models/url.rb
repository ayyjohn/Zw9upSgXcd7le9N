class Url < ApplicationRecord
  validates :url, :content, presence: true
end
