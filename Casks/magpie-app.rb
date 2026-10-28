cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1837"
  sha256 arm:   "9bfdefc5f84a729aef66ddb412c39599fe12fcb219215db0aa5243e9bf2f61cd",
         intel: "b074310a22a1e6966e06399cd294819336436e04675b9b42d5ca806ba50695f5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
