class Review < ApplicationRecord

  belongs_to :user
  belongs_to :movie
  has_many :replies, class_name: 'Review', foreign_key: :parent_id

  validates_inclusion_of :rating, in: 1..10, unless: :parent_id?

  def can_reply?(current_user)
    current_user.is_admin || user == current_user
  end
end
