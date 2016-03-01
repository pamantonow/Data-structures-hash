require './hash'
describe HashItem do
  let(:hash_item) {HashItem.new({"a" => 1, "b" => 2 , "c" => 3})}

  describe "#new" do 
    it 'creates a new instant of a hash and returns the hash' do
      expect(hash_item).to be_a(HashItem)
    end
  end

  describe "#set" do
    it 'adds a key-value pair to the existing hash' do
      hash_item.set("d",4)
      expect(hash_item.hash).to eq({"a" => 1, "b" => 2 , "c" => 3, "d" => 4})
    end
  end

  describe "#get" do 
    it 'returns the value stored of key' do
      expect(hash_item.get("a")).to eq(1)
    end
  end

  describe "#has_key?" do 
    it 'returns true if the hash contains the searched key' do
      expect(hash_item.has_key?("b")).to be(true)
    end
  end
     

end