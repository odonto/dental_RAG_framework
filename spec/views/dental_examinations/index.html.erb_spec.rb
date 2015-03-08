require 'rails_helper'

RSpec.describe "dental_examinations/index", :type => :view do
  before(:each) do
    assign(:dental_examinations, [
      DentalExamination.create!(
        :date => "",
        :caries_findings => "",
        :tsl_findings => "",
        :perio_findings => "",
        :soft_tiss_findings => ""
      ),
      DentalExamination.create!(
        :date => "",
        :caries_findings => "",
        :tsl_findings => "",
        :perio_findings => "",
        :soft_tiss_findings => ""
      )
    ])
  end

  it "renders a list of dental_examinations" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
