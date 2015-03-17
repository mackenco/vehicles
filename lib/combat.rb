module Combat
  def weapons?
    true
  end

  def shoot!
    @remaining_ammo -= 1 if @remaining_ammo > 0
    @remaining_ammo
  end

  def reload!
    @remaining_ammo = @MAX_AMMO
  end
end


