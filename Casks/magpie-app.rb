cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3876"
  sha256 arm:   "9cf8f0a88eeea16953605b921c3b138038811bd7966662ab3db852b2e3cdd1e6",
         intel: "b108244575c835bb29e29923856463cacbe8ebe8b46f021b0ba43fb96f102d15"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
