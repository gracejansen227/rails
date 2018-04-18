class Dojo < ActiveRecord::Base
  has_many :ninjas
  validates :state, presence: true, length: { is: 2 }
  validates :name, :city, presence: true, length: { in: 2..20 }
end
