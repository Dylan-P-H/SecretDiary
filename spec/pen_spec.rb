require 'pen'
require 'secret_diary'


describe Pen do
  let(:diary) {SecretDiary.new}
  let(:pen) {Pen.new}
  it "Should add an entry to secret diary" do
    diary.unlock
    pen.add_entry(diary, "Secret")
    expect(diary.entries.length).to eq(1)
  end
  it "Should raise error when user tried to add entry while locked" do
    expect{pen.add_entry(diary, "Secret")}.to raise_error("This diary is locked")
  end
end