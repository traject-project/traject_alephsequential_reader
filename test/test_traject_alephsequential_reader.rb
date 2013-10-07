require 'helper'
require 'traject_alephsequential_reader'

class TestTrajectAlephsequentialReader < Test::Unit::TestCase

  def test_version
    version = TrajectAlephsequentialReader.const_get('VERSION')

    assert !version.empty?, 'should have a VERSION constant'
  end

end
