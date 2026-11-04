cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2949"
  sha256 arm:   "8f8f38cae89f9d7ec0ab9c675826fe1c4c0cf8ecdb9b806c164c2ffde479787c",
         intel: "21462b39e1719f549a87491ae18b9cf4f6a8ba9264fd5e8d9bfe13f6c43fb5c6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
