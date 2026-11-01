cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2505"
  sha256 arm:   "1d625785d5fb13d4dd43adf9868ffb0e0542c5c8a519c006c4e683d4f5147cd0",
         intel: "0ff8c4022a4c84472ec3ff6060febde702bd213f05081846f557ff82184cff01"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
