require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        title: "Title",
        context: "Context"
      ),
      Task.create!(
        title: "Title",
        context: "Context"
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Context".to_s, count: 2
  end
end
