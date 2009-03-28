require File.join(File.dirname(__FILE__), '..', 'test_helper')

module Gates
  class AndTest < Test::Unit::TestCase

    def test_should_return_false_when_a_is_false_and_b_is_false
      assert_equal(
       { :out => 0 }, 
       vvp(:a => 0, :b => 0)
      )
    end

    def test_should_return_true_when_given_a_is_true_and_b_is_true
      assert_equal(
       { :out => 1 },
       vvp(:a => 1, :b => 1)
      )
    end

    def test_should_return_false_when_given_a_is_false_and_b_is_true
      assert_equal(
        { :out => 0 },
        vvp(:a => 0, :b => 1)
      )
    end

    def test_should_return_false_when_given_a_is_true_and_b_is_false
      assert_equal(
        { :out => 0 },
        vvp(:a => 1, :b => 0)
      )
    end

  end
end
