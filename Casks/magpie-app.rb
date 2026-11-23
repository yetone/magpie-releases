cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4728"
  sha256 arm:   "6e047377e540e6e2b27c6fcc5b9c766fcbb3dc028829891063ed4c54d157a295",
         intel: "8facee090aec1c0ce51ebfeaf333c9688a48f1e8f0291ccac607a8fa79669670"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
