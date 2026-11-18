cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4416"
  sha256 arm:   "7fb5c0e44e10e904c32f0899da9b91682a69cd358d0e810674c43fdd5c487eb6",
         intel: "4a222d59f3d0ee3ef8cdfecb00c915aaaf642e104a49a58f7ee65df48e57db23"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
