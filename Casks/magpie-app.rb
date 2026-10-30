cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2163"
  sha256 arm:   "eef72fb3c912b8081472b5b5f8cf52f98bc24674079416fae8dc440dca0a9226",
         intel: "da3fa8125c7aae63613370953f40c31eb46077ea2f94c140a687a1d6b9007138"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
