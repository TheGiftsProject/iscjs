require 'spec_helper'

describe ISCJS do
  before :all do
    @app = Dummy::Application
  end

  describe :qtip do
    it "should find javascript asset" do
      @app.assets.find_asset("iscjs/qtip/index.js").should_not be_nil
    end

    it "should find stylesheet asset" do
      @app.assets.find_asset("iscjs/qtip.css.scss").should_not be_nil
    end
  end

  describe :jquery_plugins do
    it "should find jquery/all asset" do
      @app.assets.find_asset("iscjs/jquery/all").should_not be_nil
    end

    it "should find jquery/placeholder" do
      @app.assets.find_asset("iscjs/jquery/placeholder").should_not be_nil
    end

    it "should find jquery/shake asset" do
      @app.assets.find_asset("iscjs/jquery/shake").should_not be_nil
    end

    it "should find jquery/toggle_display" do
      @app.assets.find_asset("iscjs/jquery/toggle_display").should_not be_nil
    end

    it "should find jquery/disable" do
      @app.assets.find_asset("iscjs/jquery/disable").should_not be_nil
    end
  end

end