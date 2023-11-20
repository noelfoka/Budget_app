require 'rails_helper'

RSpec.describe 'details/index', type: :view do
  before(:each) do
    assign(:details, [
             Detail.create!(
               name: 'Name',
               amount: 2.5,
               user: nil,
               tran_group: nil
             ),
             Detail.create!(
               name: 'Name',
               amount: 2.5,
               user: nil,
               tran_group: nil
             )
           ])
  end

  it 'renders a list of details' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
