require 'spec_helper'

describe "php-modules::default" do
  describe command('ls -al /') do
    its(:stdout) { should match(/bin/) }
  end
end
