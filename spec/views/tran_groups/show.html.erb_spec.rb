require 'rails_helper'

RSpec.describe "tran_groups/show", type: :view do
  before(:each) do
    assign(:tran_group, TranGroup.create!(
      name: "Name",
      icon: "Icon",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Icon/)
    expect(rendered).to match(//)
  end
end
