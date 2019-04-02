class Category < ApplicationRecord
  belongs_to :jobs,optional: true
end
