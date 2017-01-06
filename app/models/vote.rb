class Vote < ApplicationRecord
  belongs_to :voteable, polymorphic: true
end
