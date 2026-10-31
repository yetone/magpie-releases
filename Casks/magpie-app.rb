cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2382"
  sha256 arm:   "e9be8e9e9e3e6366618423d755ce876bbba4ac3554d1c1b9bd897e16922a4ce8",
         intel: "f0590356f21fd301bdb1a1a9ccc594c1daf1ba0d785284ba2ab25ac162ca05d5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
