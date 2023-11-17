require 'rails_helper'

RSpec.describe "details/new", type: :view do
  before(:each) do
    assign(:detail, Detail.new(
      name: "MyString",
      amount: 1.5,
      user: nil,
      tran_group: nil
    ))
  end

  it "renders new detail form" do
    render

    assert_select "form[action=?][method=?]", details_path, "post" do

      assert_select "input[name=?]", "detail[name]"

      assert_select "input[name=?]", "detail[amount]"

      assert_select "input[name=?]", "detail[user_id]"

      assert_select "input[name=?]", "detail[tran_group_id]"
    end
  end
end
