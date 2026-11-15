cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4276"
  sha256 arm:   "418cd2a20c51c950bf088d3b08dba2bcff7491e2443a76abb4a734dc90b611a1",
         intel: "527ccd5552aca501e6b9b73820a57785ac58bb15041ba8a8e1a41ab4659375f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
