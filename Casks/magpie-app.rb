cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4636"
  sha256 arm:   "9be91143f9685dcb670bea370019121173819e7e44a20abcd2d521dc58ff988b",
         intel: "2676c89a8bb75abd99a127ec9f778dda3b6d3e9049e1e6f6475673459f8bf896"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
