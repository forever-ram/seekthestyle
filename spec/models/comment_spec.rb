require 'rails_helper'

describe Comment do
  it { should respond_to(:body) }
  it { should respond_to(:commentable_id) }
  it { should respond_to(:commentable_type) }
end