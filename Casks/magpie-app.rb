cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4237"
  sha256 arm:   "9d6ae81c982e8940e219cd323b5514b1e17267fa802a740cf8852c49184190e1",
         intel: "3c6003f340bfb9c7268a541afb5c7158317443d7d060a90afdb7b1591f23da26"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
