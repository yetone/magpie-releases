cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2575"
  sha256 arm:   "d9df8222cc4a2766c698fc8d394db5d14bfa823aad1753f3a239b9c146bdbc83",
         intel: "4aad267e5158d527ddba9a8c8752e2b305cba1358584a62a9df07fa763c2b91d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
