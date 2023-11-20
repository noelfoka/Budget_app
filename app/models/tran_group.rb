class TranGroup < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :details, join_table: 'details_tran_groups'

  validates :name, presence: true
  validates :user, presence: true
  validates :icon, presence: true
end
