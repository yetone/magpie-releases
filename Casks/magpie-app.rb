cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3597"
  sha256 arm:   "017bd9b7e84f60d7b55d40279dd5e88682595f374e45dfbb16320ae46bdb5fa0",
         intel: "ce9cd836fc850457373b4e6ffe6f0e03046701f5483b0defeedb0641cc8ac70d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
