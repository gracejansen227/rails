class Post < ActiveRecord::Base
  has_many :messages, :dependent => :destroy
  belongs_to :blog
  validates :content, presence: true
  validates :title, presence: true, length: { in: 7..27}



end
