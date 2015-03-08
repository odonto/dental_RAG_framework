require 'rails_helper'

RSpec.describe "dental_examinations/edit", :type => :view do
  before(:each) do
    @dental_examination = assign(:dental_examination, DentalExamination.create!(
      :date => "",
      :caries_findings => "",
      :tsl_findings => "",
      :perio_findings => "",
      :soft_tiss_findings => ""
    ))
  end

  it "renders the edit dental_examination form" do
    render

    assert_select "form[action=?][method=?]", dental_examination_path(@dental_examination), "post" do

      assert_select "input#dental_examination_date[name=?]", "dental_examination[date]"

      assert_select "input#dental_examination_caries_findings[name=?]", "dental_examination[caries_findings]"

      assert_select "input#dental_examination_tsl_findings[name=?]", "dental_examination[tsl_findings]"

      assert_select "input#dental_examination_perio_findings[name=?]", "dental_examination[perio_findings]"

      assert_select "input#dental_examination_soft_tiss_findings[name=?]", "dental_examination[soft_tiss_findings]"
    end
  end
end
