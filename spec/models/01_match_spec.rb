require_relative "../spec_helper"


    
    # let(:match) { Match.new }
    describe Match do
        let(:user) { User.new({name: "Bob", activity_level: "Highly Active",allergy_compatible: true, living_space_reqs: 3}) }

        let(:breed) {DogBreed.new({name: "Akita", activity_level: "Highly Active", allergy_compatible: true, living_space_reqs: 4}) }
    
    it "finds matches between the user and dog breed" do  
      expect(Match.user_dog_comparison(user)).to include(breed.name)
    end
end