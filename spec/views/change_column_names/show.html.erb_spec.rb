require 'rails_helper'

RSpec.describe 'change_column_names/show', type: :view do
  before(:each) do
    assign(:change_column_name, ChangeColumnName.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
