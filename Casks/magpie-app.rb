cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1860"
  sha256 arm:   "8d64db33f8da8899302ff1b8d8f5ff9fe30ce9989a011c6763de73cd0f31b8de",
         intel: "c293badfb72e5a91d5cd5b6938ae1077e8f6f2bdc477d1f8be40674c43869bd2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
