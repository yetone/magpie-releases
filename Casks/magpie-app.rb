cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4287"
  sha256 arm:   "c3184140606c13818869a23fd6d2028aef0d24aa4ad385dc2c377f71ca194b1a",
         intel: "366613a6a1d451ded8a4870063e104129b63c4174d43ee24d617ce81f9ac93aa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
