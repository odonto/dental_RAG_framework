require 'rails_helper'

RSpec.describe "dental_examinations/show", :type => :view do
  before(:each) do
    @dental_examination = assign(:dental_examination, DentalExamination.create!(
      :date => "",
      :caries_findings => "",
      :tsl_findings => "",
      :perio_findings => "",
      :soft_tiss_findings => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
