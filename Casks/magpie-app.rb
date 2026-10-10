cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1162"
  sha256 arm:   "75d1617f133c681ca6c0f0b72d84ad2750222de5037145dd6ed03a251fc7e123",
         intel: "d359508d7d5eeca964511cfdcd5ffdf30517d24d376ae1f571bbd85111ed2491"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
