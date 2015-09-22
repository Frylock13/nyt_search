require 'spec_helper'

describe "Nyt Search Page" do
  before :each do
    @search = NytSearch::Article.search(query: "USA", page: 1)
  end

  it 'checks count of json hash with page' do
    expect(@search.count).to eq(10)
  end

  it 'compares json hashes on different pages' do
    @search_on_page = NytSearch::Article.search(query: "USA", page: 2)
    expect(@search).not_to eq(@search_on_page) # articles on 1 and 2 pages
  end
end