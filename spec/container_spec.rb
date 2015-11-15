require 'spec_helper'

describe package('emacs') do
  it { should be_installed }
end

describe file('/var/www/html/index.php') do
  it { should exist }
end

describe service('apache2') do
  it { should be_running }
end
