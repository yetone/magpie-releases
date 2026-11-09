cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3359"
  sha256 arm:   "10798a233ee77276e1675528664457becae9163b6276250367dd0059941c89da",
         intel: "f96ae4e0092b12196c8f8db85abff5684524f43462cb523ae24203a65e7cfc22"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
