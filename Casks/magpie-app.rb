cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3127"
  sha256 arm:   "bbd991bd7f0674241409191d7808b3d09698e631641d0688a877e9b642e67b23",
         intel: "f95eda6fc37ed10a9b7f142c5a2af955038bc3bc5e0ac2da87649b31d0a0c060"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
