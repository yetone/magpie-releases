cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3151"
  sha256 arm:   "9a954e090471d3f57235854ecd9bd6ec01f417ace781a5aab0d9799682081260",
         intel: "9de5591ed4bc382f30d74221e2098b2d8c0191c73c1c5bf8cd62bf7e518c1305"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
