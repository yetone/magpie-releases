cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1854"
  sha256 arm:   "7ed0c9d6213ea158307b0042aca45753921dfbb4460625745c30e7c615af2f7b",
         intel: "2b25019bef28bcb1b0b3bc72e4d8cc080a9601d98dfac277fe39445edbee2a6a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
