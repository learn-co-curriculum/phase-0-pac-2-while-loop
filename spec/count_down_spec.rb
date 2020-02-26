require 'spec_helper'
describe 'lib/countdown.rb' do
  it 'should output the numbers 10 through 1 in descending order' do
    file = Dir.pwd + "/lib/count_down.rb"
    
    expect{ load file }.to output(/10/).to_stdout
    expect{ load file }.to output(/9/).to_stdout
    expect{ load file }.to output(/8/).to_stdout
    expect{ load file }.to output(/7/).to_stdout
    expect{ load file }.to output(/6/).to_stdout
    expect{ load file }.to output(/5/).to_stdout
    expect{ load file }.to output(/4/).to_stdout
    expect{ load file }.to output(/3/).to_stdout
    expect{ load file }.to output(/2/).to_stdout
    expect{ load file }.to output(/1/).to_stdout
    
    expect{ load file }.to output(/10(\r\n|\r|\n)9(\r\n|\r|\n)8(\r\n|\r|\n)7(\r\n|\r|\n)6(\r\n|\r|\n)5(\r\n|\r|\n)4(\r\n|\r|\n)3(\r\n|\r|\n)2(\r\n|\r|\n)1/).to_stdout, "expected:\n10\n9\n8\n7\n6\n5\n4\n3\n2\n1\n\nEach number should be on a new line and in the correct order."
  end

  it 'should output "Happy New Year!" after the countdown' do
    file = Dir.pwd + "/lib/count_down.rb"
    expect{ load file }.to output(/Happy New Year!/).to_stdout
  expect{ load file }.to output(/10(\r\n|\r|\n)9(\r\n|\r|\n)8(\r\n|\r|\n)7(\r\n|\r|\n)6(\r\n|\r|\n)5(\r\n|\r|\n)4(\r\n|\r|\n)3(\r\n|\r|\n)2(\r\n|\r|\n)1(\r\n|\r|\n)Happy New Year!/).to_stdout, "expected:\n10\n9\n8\n7\n6\n5\n4\n3\n2\n1\nHappy New Year!\n"
  end
end