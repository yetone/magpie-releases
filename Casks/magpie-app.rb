cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3346"
  sha256 arm:   "2d3f86a710add76a841682e5b6adc1f7e8d94223cd9423f53ce4e55e2ffa59fa",
         intel: "baee1dbf8834919e64e53f7ca117cf30bc8247fe22aa4d8c38cf8784ae4f2797"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
