require 'rspec'
require_relative '../app/sorting_hat'

describe SortingHat do
    let(:sorting_hat) { SortingHat.new }

  context 'sorting students' do
    let(:sorted) { { slytherin: [], griffindor: [], hufflepuff: [] } }
    let(:houses) { { slytherin: ["clever", "ambitious", "deceptive"],
                     griffindor: ["brave", "stubborn", "defiant"],
                     hufflepuff: ["just", "kind", "loyal"]} }

    let(:students) { [ {
                           name: "draco malfoy", traits: ["ambitious", "deceptive", "stubborn"]
                      },
                      {
                           name: "ernie macmillian", traits: ["determined", "pompous", "reasonable"]
                      },
                      {
                           name: "cedric diggory", traits: ["just", "brave", "dedicated"]
                       },
                       {
                           name: "theodore nott", traits: ["clever", "quiet", "proud"]
                       }
    ] }

      it 'should sort students by trait into houses' do
        sorted_students = sorting_hat.sort(students, houses)
        expect(sorted_students[:slytherin]).to eq(["draco malfoy", "theodore nott"])
      end

      it 'sorts students with no definitive match into hufflepuff' do
        sorted_students = sorting_hat.sort(students, houses)
        expect(sorted_students[:hufflepuff]).to include("cedric diggory")
      end

      it 'sorts students with zero matches into hufflepuff' do
        sorted_students = sorting_hat.sort(students, houses)
        expect(sorted_students[:hufflepuff]).to include("ernie macmillian")
      end

      it 'returns specified student house if sorted' do
        sorted = sorting_hat.sort(students, houses)
        expect(sorting_hat.house("draco malfoy")).to eq("slytherin")
      end

    context 'user input' do
      before do
      allow($stdout).to receive(:gets).and_return("Chuck\n")
      end

      it 'takes a name and traits before sorting' do
        puts :gets
        puts sorting_hat.sort(sorting_hat.new_student, houses)
      end

    end
  end
end
