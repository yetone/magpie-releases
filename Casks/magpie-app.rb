cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5051"
  sha256 arm:   "e947afada5e76451413adb126c60ec104b89cbe50757731b07a6de32614a7d36",
         intel: "c59d467b1e9dbf05df15ed537c265a474cce127dfaed0b1061c77f4fcb06b273"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
