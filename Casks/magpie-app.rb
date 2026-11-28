cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4994"
  sha256 arm:   "3b44aaa06da0325797a4654bd4fe7287c81e7e570cbb69ef70ca3401fecfeec3",
         intel: "b4192f19b1c39a25c6ae425377ab393020f19419efca42e7916a419d693b289b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
