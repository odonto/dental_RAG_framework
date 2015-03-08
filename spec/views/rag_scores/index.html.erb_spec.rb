require 'rails_helper'

RSpec.describe "rag_scores/index", :type => :view do
  before(:each) do
    assign(:rag_scores, [
      RagScore.create!(
        :date => "",
        :version => "",
        :caries_score => "",
        :tsl_score => "",
        :perio_score => "",
        :soft_tiss_score => ""
      ),
      RagScore.create!(
        :date => "",
        :version => "",
        :caries_score => "",
        :tsl_score => "",
        :perio_score => "",
        :soft_tiss_score => ""
      )
    ])
  end

  it "renders a list of rag_scores" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
