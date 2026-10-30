cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2275"
  sha256 arm:   "844ccddb44c58b26080bb84812b0d25bb091bb9264754b6ff574a168660f057a",
         intel: "17c1245b703edb9a188f09e92309069f3f314eaccf45b72ef729d20642ef023a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
