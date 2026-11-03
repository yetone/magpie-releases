cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2780"
  sha256 arm:   "1df8385f41b07fdb122f538b067d7301b4e5ae7654f9074769920ae0b59e171b",
         intel: "05f0da4208cd8e5cf6ad5c0041a7e2a3b3bbcf704345de8d6e62cbc6f8b6b4a3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
