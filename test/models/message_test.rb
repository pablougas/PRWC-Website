require 'test_helper'

class MessageTest < ActiveSupport::TestCase
    test 'should accept valid attributes' do
      valid_attrs = {
        name: 'stephen',
        email: 'stephen@example.com',
        content: 'kthnxbai'
      }

      msg = Message.new valid_attrs

      assert msg.valid?
    end

    test 'attributes can not be blank' do
        msg = Message.new
        refute msg.valid?
    end
end
