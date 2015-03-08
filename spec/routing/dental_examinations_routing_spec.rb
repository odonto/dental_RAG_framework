require "rails_helper"

RSpec.describe DentalExaminationsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dental_examinations").to route_to("dental_examinations#index")
    end

    it "routes to #new" do
      expect(:get => "/dental_examinations/new").to route_to("dental_examinations#new")
    end

    it "routes to #show" do
      expect(:get => "/dental_examinations/1").to route_to("dental_examinations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dental_examinations/1/edit").to route_to("dental_examinations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dental_examinations").to route_to("dental_examinations#create")
    end

    it "routes to #update" do
      expect(:put => "/dental_examinations/1").to route_to("dental_examinations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dental_examinations/1").to route_to("dental_examinations#destroy", :id => "1")
    end

  end
end
