require "rails_helper"

RSpec.describe RagScoresController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rag_scores").to route_to("rag_scores#index")
    end

    it "routes to #new" do
      expect(:get => "/rag_scores/new").to route_to("rag_scores#new")
    end

    it "routes to #show" do
      expect(:get => "/rag_scores/1").to route_to("rag_scores#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rag_scores/1/edit").to route_to("rag_scores#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/rag_scores").to route_to("rag_scores#create")
    end

    it "routes to #update" do
      expect(:put => "/rag_scores/1").to route_to("rag_scores#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rag_scores/1").to route_to("rag_scores#destroy", :id => "1")
    end

  end
end
