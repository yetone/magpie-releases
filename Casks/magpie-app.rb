cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5043"
  sha256 arm:   "b71083bbc9cb331d37181a277d93336e7caae041dfeb9d9cf0edb005d56d1ac3",
         intel: "9e16fe1eb1d2611f069dccc03f65380406279b751f8a67279228516efb5ecd50"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
