require 'secret_diary'

class Pen
  def add_entry(diary, secret)
    fail "This diary is locked" if diary.state == "locked"
    diary.entries.push(secret)
  end
end