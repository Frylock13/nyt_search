require 'spec_helper'

describe "Nyt Search Fields" do
  before :each do
    @search = NytSearch::Article.search(query: "USA", only: "source,web_url")
  end

  it 'checks count of json array' do
    expect(@search.count).to eq(10)
  end

  it 'checks count of json array if there are spaces in string' do
    search_with_spaces = NytSearch::Article.search(query: "USA", only: "source, web_url, headline") #spaces
    expect(search_with_spaces.count).to eq(10)
  end

  it 'checks that array has some fields' do
    expect(@search[0]).to have_key("source")
    expect(@search[0]).to have_key("web_url")
  end

  it 'checks that array has no some fields' do
    search_without_source = NytSearch::Article.search(query: "USA", only: "web_url") #spaces
    expect(search_without_source[0]).to have_key("web_url")
    expect(search_without_source[0]).not_to have_key("source")
  end
end