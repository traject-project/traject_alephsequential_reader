require 'helper'
require 'traject/alephsequential_reader'

class TestTrajectAlephsequentialReader < Test::Unit::TestCase

  def test_version
    version = Traject::AlephsequentialReader.const_get('VERSION')

    assert !version.empty?, 'should have a VERSION constant'
  end

end
