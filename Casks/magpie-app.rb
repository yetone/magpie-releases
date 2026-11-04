cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2990"
  sha256 arm:   "799b14ac9f121268a20b2ddc9923fa602b735da7fdad30b36da42da45987fef7",
         intel: "35681d64a65f0c1610f4c8884d2c690bd837012572ecffcd1e0b9560278448d4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
