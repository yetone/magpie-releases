cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4562"
  sha256 arm:   "4763b1668e973b3a2a04cd017d8b176241981b98ba5130c5d48882c332df5bee",
         intel: "3f36b0d0e7d0ad96781cb75a5d22cccae9691b388c10420ca6a9702e53fbdb5f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
