require 'rails_helper'

RSpec.describe "patients/edit", :type => :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :name => "MyString",
      :NHS_number => "MyString",
      :age => 1
    ))
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do

      assert_select "input#patient_name[name=?]", "patient[name]"

      assert_select "input#patient_NHS_number[name=?]", "patient[NHS_number]"

      assert_select "input#patient_age[name=?]", "patient[age]"
    end
  end
end
