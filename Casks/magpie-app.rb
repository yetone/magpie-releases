cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3985"
  sha256 arm:   "38e0a39055d2fd754c5e94e9efaaee1cf38031de147fef3dd822ef1df98f7d51",
         intel: "7921ad77d7286d23532d507820a6fb0833bbdb90058b22a765cf21f0fa3a9cba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
