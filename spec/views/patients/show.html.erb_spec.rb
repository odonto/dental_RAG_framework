require 'rails_helper'

RSpec.describe "patients/show", :type => :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :name => "Name",
      :NHS_number => "Nhs Number",
      :age => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Nhs Number/)
    expect(rendered).to match(/1/)
  end
end
