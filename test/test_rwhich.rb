require 'helper'

class Witch
  include RWhich
  extend RWhich
end

describe "when extended by RWhich" do
  subject { Witch }

  it "should find a common utility" do
    Witch.which('ls').wont_be_nil
  end

  it "should not find something that doesn't exist" do
    Witch.which('afdbn4tnewgq3nq4tnw4ymqt4nw4tnwrntn').must_be_nil
  end
end

describe "when RWhich is included in" do
  subject { Witch.new }

  it "should find a common utility" do
    subject.which('ls').wont_be_nil
  end

  it "should not find something that doesn't exist" do
    subject.which('afdbn4tnewgq3nq4tnw4ymqt4nw4tnwrntn').must_be_nil
  end
end

describe File do
  it "should respond to which" do
    File.must_respond_to :which
  end
end
