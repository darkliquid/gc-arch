require File.join(File.dirname(__FILE__), '..', 'test_helper')

module Gates
  class NotTest < Test::Unit::TestCase

    def test_should_return_false_when_in_given_true
      assert_equal(
        { :out => 0 },
        vvp({ :in => 1 })
      )
    end

    def test_should_return_true_when_given_false
      assert_equal(
        { :out => 1 },
        vvp({ :in => 0 })
      )
    end

  end
end
