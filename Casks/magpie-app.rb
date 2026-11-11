cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3691"
  sha256 arm:   "b9ba13f7fd787876f2597bb02e0b3ce83944814fa6b016e7ccffd201e895eb8f",
         intel: "7a51a25d9c120900595a049d0c998ebb23c1151b755a550cf96dc059fc46208e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
