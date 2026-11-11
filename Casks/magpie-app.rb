cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3813"
  sha256 arm:   "9fdad304003bb67017a2dbba16bc89ffb9e133bb5b986c54628f47061a4ce73b",
         intel: "e5cc85e3db72bbee82baff5b408fcc686c234f0beaf9ed1bf9ea13ae877ddf46"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
