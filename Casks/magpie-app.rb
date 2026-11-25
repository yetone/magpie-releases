cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4810"
  sha256 arm:   "b01efa3f49471db2367089a4347fb573726f2f77d2627abd8e081535312f03a5",
         intel: "016f41042e955bac8427c34b9c6b510211fa275d4b683b028536b11194a5b1f2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
