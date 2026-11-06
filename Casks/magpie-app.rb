cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3117"
  sha256 arm:   "485209bc15c6402fa2cd80519434d3c0f47e26f31d73350962e5a346ddf08571",
         intel: "72cb48892226041d88b453703be37c6665dcebdb73dd81d1391df00a59b7f765"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
