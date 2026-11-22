cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4670"
  sha256 arm:   "7f4a3697760f0feaf477eb96aabd1c9d1cfcfd5847d02e1bc5d35008a502c297",
         intel: "94e3fb433fc71121e0dec50597bf34db5f17c2b9a9a0537cc7bc80d2e5b4fbfb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
