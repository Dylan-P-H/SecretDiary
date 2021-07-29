require 'secret_diary'


describe SecretDiary do
  let(:diary) {SecretDiary.new}
  it "Should initially be locked" do
    expect(diary.state).to eq("locked")
  end
  it "Should unlock when asked" do
    diary.unlock
    expect(diary.state).to eq("unlocked")
  end
  it "Should unlock when asked" do
    diary.unlock
    diary.lock
    expect(diary.state).to eq("locked")
  end
  it "Should raise error if diary is locked and user invokes get_entries method" do
      expect{diary.see_entries}.to raise_error("This diary is locked")
  end
end