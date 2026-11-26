cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4858"
  sha256 arm:   "eaf0772e7ff4c53d46c6aa080bd11a4665375139631d9ac30052c002603b3b04",
         intel: "0547ec8426ab62b62649f38b2f01f643879b9240ba5e0783d2c6b312ad4dccae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
