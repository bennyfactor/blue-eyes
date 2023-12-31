require 'fakefs'
require_relative "../spec_helper"
require_relative "../../lib/blue-eyes"

describe Blue-eyes::VERSION do
  subject { Blue-eyes::Generators::AppGenerator }

  describe "source_root" do
    it "should return with a full path" do
      pwd           = File.dirname(__FILE__)
      template_path = pwd.sub 'spec/blue-eyes', 'lib/blue-eyes/generators/app/templates'
      subject.source_root.must_equal template_path
    end
  end
end
