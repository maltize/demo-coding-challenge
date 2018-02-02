module TeamsHelper

  def available_monsters
    current_user.monsters.map{|m| [m.name, m.id]}
  end
end
