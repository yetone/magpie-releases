cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3381"
  sha256 arm:   "bcd5d17fc2789384a4910d468e7e59bbc08567962a3505bc59870e5bc7298b29",
         intel: "085c8dd1d56be5d5557c4be48d39106a558707bc33d19b2e1001f242abe0a33c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
