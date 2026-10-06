cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1081"
  sha256 arm:   "4bd7806788035e993419dbf79ae5daf813c79b71fdec0a1f0568a3635cb34baa",
         intel: "5f85cad2278a3e9d76ab3fd4f0ab8b6f3789b7530d7c157ef71a39ccaf2a34e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
