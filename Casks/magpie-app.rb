cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3156"
  sha256 arm:   "65e853dbed4fa4c212078e221ce0cc899aa4221b3768d44b56aa07be52feb845",
         intel: "7ab65fcc511ac59eab1170e1391c610d89a80375d638231d45c806a4bb9e4e30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
