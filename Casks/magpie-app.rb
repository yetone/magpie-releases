cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.958"
  sha256 arm:   "e06767c6406fe143bd4a54bcde3d14c50371196433fa7c89d1211ecf7616ba2c",
         intel: "c5fcacd76aef0bb220630735279e7cbc74a6fd544ee31f3a39f5d2751327e4f2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
