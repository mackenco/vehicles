module Combat
  def weapons?
    true
  end

  def shoot!
    if @remaining_ammo > 0
      @remaining_ammo -= 1
      "pew pew"
    else
      "all out!"
    end
  end

  def reload!
    @remaining_ammo = @MAX_AMMO
    "reloaded!"
  end
end


