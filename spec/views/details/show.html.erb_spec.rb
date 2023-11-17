require 'rails_helper'

RSpec.describe "details/show", type: :view do
  before(:each) do
    assign(:detail, Detail.create!(
      name: "Name",
      amount: 2.5,
      user: nil,
      tran_group: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
