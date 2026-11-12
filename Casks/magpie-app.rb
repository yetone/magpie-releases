cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3900"
  sha256 arm:   "1449257e669ddf1a25fa5a0b00b576e16e4b71b1ddab16bdddcb86ea3cdf6516",
         intel: "7903e8867c391c8fde2b1ab00878c9545d19fa07b1787503140662514f4b7fcd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
