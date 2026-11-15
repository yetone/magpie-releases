cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4228"
  sha256 arm:   "9bfc3fa5bf5a6054e8dd81c67521cd14356602ae4627286b2e776898327259a6",
         intel: "b01ac0590d62898a25a2bce8a718381d85253627ac40394d7cc59d97fdfc6190"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
