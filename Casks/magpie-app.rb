cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3150"
  sha256 arm:   "86d9b9bbc611f9cd1062026b3d9d7c0a16126b63a57fadc46b8fd5ea25bd9c46",
         intel: "91b1764c0dddf27cbbf6d1680740f7fa7bc22da2effb2a50bd532d619e8577e7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
