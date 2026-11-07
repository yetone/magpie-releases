cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3260"
  sha256 arm:   "e0a5d40b6291db973ab1a485a57ec1c02b112397b780b35f37e4cd86041d7f46",
         intel: "5e7daf9364384ee22cdcd07df485b69954abf5038b05e517b9d0aa491cdd42a9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
