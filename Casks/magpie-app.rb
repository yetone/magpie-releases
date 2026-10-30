cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2189"
  sha256 arm:   "3d8d14954c6040545b9b79b06f86e86de2c95e6819440b32d84ca101835cf3db",
         intel: "ae2dca7d1eee8f1f55aae7ee1d49c5469d46463be1b491602aaa8f537793d520"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
