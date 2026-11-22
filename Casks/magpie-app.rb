cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4671"
  sha256 arm:   "9359d04d779c8f3f782932d34a6d0ff78152f34372e98a629e93878f75b3c48c",
         intel: "711a89ade3d7e9720e1082daeb5613fdb25c5597ae8a79ea27b2a7d9c157f36a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
