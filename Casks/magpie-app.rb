cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3189"
  sha256 arm:   "71c6086cf4d659f2fa639e33f2f4c416859cd1c6d19a462f951f14d87322a225",
         intel: "03db860cc023bde9e2cae9e0232b6b7185ebd06056089907fe5dc2f3aa900ffc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
