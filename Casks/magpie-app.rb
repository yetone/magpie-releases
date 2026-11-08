cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3306"
  sha256 arm:   "e3bc805ee807f5f9b99de02970eb905f46c3e13cc4e5bc980ae2c652b04467f9",
         intel: "d5f8ebd8bbccf9e3cb790521c45c506f2fc578995367087bbc2c57b6dad599c8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
