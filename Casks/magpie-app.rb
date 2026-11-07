cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3289"
  sha256 arm:   "e01d5977350e412e03a9f20b6c504bb31020177dc7f2453664a75676b34d26ab",
         intel: "5d09f3ec0fed07eaa00b6402deb9d6c1626361ab803754e338cae8db7f8dee36"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
