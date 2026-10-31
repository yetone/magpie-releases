cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2330"
  sha256 arm:   "d1e2e6df1de969294ddb9b678f1e5b43c1bf19e177802beb760fd6bd1bc08953",
         intel: "9d16e93995a2fa6ef5b2dcfa33696992cdefe6bbd575228b81928a803ba27c47"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
