require 'rails_helper'

RSpec.describe "rag_scores/edit", :type => :view do
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

  it "renders the edit rag_score form" do
    render

    assert_select "form[action=?][method=?]", rag_score_path(@rag_score), "post" do

      assert_select "input#rag_score_date[name=?]", "rag_score[date]"

      assert_select "input#rag_score_version[name=?]", "rag_score[version]"

      assert_select "input#rag_score_caries_score[name=?]", "rag_score[caries_score]"

      assert_select "input#rag_score_tsl_score[name=?]", "rag_score[tsl_score]"

      assert_select "input#rag_score_perio_score[name=?]", "rag_score[perio_score]"

      assert_select "input#rag_score_soft_tiss_score[name=?]", "rag_score[soft_tiss_score]"
    end
  end
end
