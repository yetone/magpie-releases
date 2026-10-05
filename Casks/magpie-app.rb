cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1007"
  sha256 arm:   "aaa10e59528855c0371dcd99baced40774b1b00956cec51069d568480129ddef",
         intel: "362be751d00c53179c59511e444994915728b49d4c04444818ec4c9b7d0ca1a4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
