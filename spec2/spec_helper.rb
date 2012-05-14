ENV["RAILS_ENV"]="test";

require File.expand_path("../../config/environment",__FILE__);
require 'active_record';
$:.unshift File.join(File.dirname(__FILE__),"..","app","models");
$:.unshift File.join(File.dirname(__FILE__),"..","app","controllers");
$:.unshift File.join(File.dirname(__FILE__),"..","app","views");