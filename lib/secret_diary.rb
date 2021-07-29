require 'pen'

class SecretDiary
  attr_accessor :state, :entries
  def initialize
    @state = "locked"
    @entries = []
  end
  def unlock
    @state = "unlocked"
  end
  def lock
    @state = "locked"
  end
  def see_entries
    fail "This diary is locked" if @state == "locked"
    return @entries
  end
end