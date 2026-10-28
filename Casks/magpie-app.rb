cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1882"
  sha256 arm:   "d9dc8c18ba873abb2c2f035ee0e099457efc210b8c3766e61a9e656a89ac80ca",
         intel: "086dbf239efd560f2335fadf62f1345d040bf1e5c8f7c51b36c70315652cb812"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
