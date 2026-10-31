cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2439"
  sha256 arm:   "ad59ed2bab46db6b5eeab6678911a0b4bb879a428c44c24610d0cf85c3a3bd18",
         intel: "b7d08370ca3faa92e42b59b46b204f3682d189017581c0698a66c8d44612fbc6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
