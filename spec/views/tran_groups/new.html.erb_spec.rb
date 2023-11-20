require 'rails_helper'

RSpec.describe 'tran_groups/new', type: :view do
  before(:each) do
    assign(:tran_group, TranGroup.new(
                          name: 'MyString',
                          icon: 'MyString',
                          user: nil
                        ))
  end

  it 'renders new tran_group form' do
    render

    assert_select 'form[action=?][method=?]', tran_groups_path, 'post' do
      assert_select 'input[name=?]', 'tran_group[name]'

      assert_select 'input[name=?]', 'tran_group[icon]'

      assert_select 'input[name=?]', 'tran_group[user_id]'
    end
  end
end
