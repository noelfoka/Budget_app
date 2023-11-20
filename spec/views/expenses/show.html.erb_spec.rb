require 'rails_helper'

RSpec.describe "expenses/show", type: :view do
  before(:each) do
    assign(:expense, Expense.create!(
      name: "Name",
      amount: 2,
      user: nil,
      category: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
