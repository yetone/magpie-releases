cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2469"
  sha256 arm:   "b1bf7887f9a4b384c06ac3118b8e22e55836ae241d9516566a7cbd2b14d6fdad",
         intel: "056cbc3cf900858895068b704f34a4f2ea073bac6d537b74478b15b1dc052018"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
