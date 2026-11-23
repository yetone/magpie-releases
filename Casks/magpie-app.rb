cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4691"
  sha256 arm:   "68ca266fd9186cc6772165ac37130d32454f93739dd9d62a32aa50ab5c2a4b2d",
         intel: "5f513d1ad12ab983ecdf7bc82703baf9d49185f60b8a0fc4e731b7b7f169f8f5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
