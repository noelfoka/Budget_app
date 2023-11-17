require 'rails_helper'

RSpec.describe "change_column_names/new", type: :view do
  before(:each) do
    assign(:change_column_name, ChangeColumnName.new())
  end

  it "renders new change_column_name form" do
    render

    assert_select "form[action=?][method=?]", change_column_names_path, "post" do
    end
  end
end
