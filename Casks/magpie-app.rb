cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2541"
  sha256 arm:   "e5e1aa948d8bd71d43f85d07e6e6652f9492f065593747873d477c7f022385f4",
         intel: "e6b460217a18f8a89b60546e58f428ebda24a5d1b4a16925fc25b3f94fdbf927"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
