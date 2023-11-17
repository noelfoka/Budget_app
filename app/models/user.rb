class User < ApplicationRecord
    has_many :detail
    has_many :tran_group
end
