cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4917"
  sha256 arm:   "599cbc7ac7c6b5aba550a9311bdc452b5a9c6aac98032a85ff90a13cb048685b",
         intel: "00aa1dc318b5dd40c47879f63cbf1ea3a7478a0fe54ee45dc3e359198f0a60d6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
