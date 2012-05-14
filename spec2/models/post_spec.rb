require_relative '../spec_helper'
require 'post'

describe Post do
  before(:each) do
    @p=Post.new({
    	:title => "title",
    	:body => "content",
    	:author => "vincent",
    	:date => Time.new(2012,1,1,12,00,0,"+00:00")
    });
  end
  it "should be valid (all params)" do
    @p.should be_valid;
  end
  it "should be invalid (any title)" do
    @p.title="";
    @p.valid?.should be_false;
  end
  it "should be invalid (any body)" do
    @p.body="";
    @p.valid?.should be_false;
  end
  it "should be invalid (any author)" do
    @p.author="";
    @p.valid?.should be_false;
  end
  it "should be invalid (any date)" do
    @p.date="title";
    @p.valid?.should be_false;
  end
end
