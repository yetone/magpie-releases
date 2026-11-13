cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4086"
  sha256 arm:   "27f6de62e2eb4b80eba10a4fdaa10666727479008b968f8238d7c51873529756",
         intel: "4d5be075913434541c4ed857f84bd4062e9937062115b29d31d53c2d538f1e96"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
