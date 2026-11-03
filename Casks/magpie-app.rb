cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2853"
  sha256 arm:   "67671203071e75c5ae5f2b4601059144e78b1acff74ed592ca978af9bd885703",
         intel: "a826b535fde4aa6356c0d5dbb014d3cab18e748ed62b7605d38f2b1233083585"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
