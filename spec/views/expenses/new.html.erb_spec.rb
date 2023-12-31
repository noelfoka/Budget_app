require 'rails_helper'

RSpec.describe "expenses/new", type: :view do
  before(:each) do
    assign(:expense, Expense.new(
      name: "MyString",
      amount: 1,
      user: nil,
      category: nil
    ))
  end

  it "renders new expense form" do
    render

    assert_select "form[action=?][method=?]", expenses_path, "post" do

      assert_select "input[name=?]", "expense[name]"

      assert_select "input[name=?]", "expense[amount]"

      assert_select "input[name=?]", "expense[user_id]"

      assert_select "input[name=?]", "expense[category_id]"
    end
  end
end
