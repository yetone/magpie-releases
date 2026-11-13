cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4063"
  sha256 arm:   "fac11640436a20e2fb404e81d6e4a70fc565f2fc34e74dc02ccdc9b16495d0e6",
         intel: "7733fc91adfcf2f900600c22a21a9002098d84f7485848c746c16c6a36a7c6fc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
