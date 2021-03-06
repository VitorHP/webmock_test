require 'rails_helper'

describe "Webmock Test" do
  it "Mocks a web call successfully" do
    stub_request(:get, "http://www.example.com/").
      to_return(:status => 200, :body => "abc", :headers => {})

    expect(HTTParty.get("http://www.example.com/").body).to eq("abc")
  end

  it "mocks an error from the server" do
    stub_request(:any, "www.example.com").
        to_return(status: [500, "Internal Server Error"])

    expect(HTTParty.get("http://www.example.com/").code).to eq(500)
  end
end
