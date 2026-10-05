cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.932"
  sha256 arm:   "d6dc18a93088d78ba9c8f95ed6e3f660a7e978b5067837283372d58d696a21f3",
         intel: "7e6e920625267d599d2c0e10b8e7e7025c837c4fc0aba179f69782da6a4fb697"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
