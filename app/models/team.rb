class Team < ApplicationRecord
  belongs_to :user

  validates :monster_1_id, presence: true
  validates :monster_2_id, presence: true
  validates :monster_3_id, presence: true

  validate :on => :create do
    monsters = [self.monster_1_id, self.monster_2_id, self.monster_3_id]
    errors.add(:base, 'Duplicated monsters') if monsters.uniq != monsters
  end

  validate :on => :create do
    errors.add(:base, 'Too many teams') if self.user.teams.count >= 3
  end
end
