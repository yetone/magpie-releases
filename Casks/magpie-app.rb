cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4474"
  sha256 arm:   "a202853da2cbdd6433c6e8ed1dcdcdc9b5902c923abd3d6fb1e74e4ff8e8e9a7",
         intel: "94804b965fac622a7041a4a9a1f5a39bdc04a9802b1e5c7a710c444ead1f1e3f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
