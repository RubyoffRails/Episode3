require './db/setup'


describe '#search_by_day' do
	it "should return Thursday shows" do
		STDIN.stub(:gets).and_return("")
		require_relative '../watchman'
		shows = search_by_day('Thursday').map { |show| show.name }
		puts shows
		expect(shows).to eq(['Community','Homeland'])
	end
end
 