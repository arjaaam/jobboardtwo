class Job < ApplicationRecord
  has_many :categories
  validates :title, :category_id,:jobtype,:headquarter,:region,:applylink,:description, presence: true
  validates :headquarter, length: { minimum: 3, maximum: 20 }
  validates :applylink, length: { minimum: 7}
  validates :description, length: { minimum: 20,
    too_long: "%{count} characters is the maximum allowed" }

end
