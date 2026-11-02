cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2698"
  sha256 arm:   "9d0de7fd760f93ad06434245197dfcd76e16725445d3a8854981f1cb8484d685",
         intel: "8c94f182ed107caef3dd619c99464d1e3a6c1d15a61cd8520ea4422a593904b8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
