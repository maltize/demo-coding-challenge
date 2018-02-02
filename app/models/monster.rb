class Monster < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :power, presence: true
  validates :typee, presence: true

  validate :on => :create do
    errors.add(:base, 'Too many monsters') if self.user.monsters.count >= 20
  end
end
