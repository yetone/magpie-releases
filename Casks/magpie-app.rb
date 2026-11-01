cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2531"
  sha256 arm:   "c5ccb6f6e364544287ee54051f0dc6c1e44f88026b71f343ab5b70267509ee0d",
         intel: "2ca96b71a5db2753cada945131f0f9dca366c97ce4d0afde30fc3dd7be473bfb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
