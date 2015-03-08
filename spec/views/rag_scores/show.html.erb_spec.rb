require 'rails_helper'

RSpec.describe "rag_scores/show", :type => :view do
  before(:each) do
    @rag_score = assign(:rag_score, RagScore.create!(
      :date => "",
      :version => "",
      :caries_score => "",
      :tsl_score => "",
      :perio_score => "",
      :soft_tiss_score => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
