cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.147"
  sha256 arm:   "94928bf9e59407ff4fe7588a2fe9100e406a61b873f9b4a817da6692ea2a85c6",
         intel: "db47e7ff1355f6e46efb05e469d0e5e99525d2d7f3b3f161222d396c6f59e55e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
