class TranGroup < ApplicationRecord
  belongs_to :user
  has_many :detail
end
