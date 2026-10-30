cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2228"
  sha256 arm:   "49d9f98a5a203fa0a52c0093eedb212237728f54fb394fbebac95c676c11e052",
         intel: "ce3caa193669591df860899f368e05c7b182e9d436e74bb622301705e82c0999"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
