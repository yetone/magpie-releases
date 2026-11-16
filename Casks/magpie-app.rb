cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4334"
  sha256 arm:   "70e46e5333ccc7773dbaad46863b9011b1fa56d655fb2c530cb57f6a9390d774",
         intel: "629321d43c695e8ab1666d66a925001d60921419b5fa7d7d90a53248abcf2bbc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
