# # encoding: utf-8
#
# Inspec test for recipe vscode::default
#
# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('code') do
  it { should be_installed }
end
