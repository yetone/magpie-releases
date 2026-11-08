cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3348"
  sha256 arm:   "594f8c52580bb9dc048886d2388fcce6cecbd68546583887f84cb576597a3c61",
         intel: "5f8c64508730532ab2c02ef6158805617caf1bb721e7e012c74dd9d336fd92bf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
