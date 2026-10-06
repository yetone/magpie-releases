cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1092"
  sha256 arm:   "7ac000690db316f0a63072c0fe2255939c891b155508f94231146bfedce66871",
         intel: "28a4a9da11f1de6da042cb5f03b4aa21ac865e91cbf7ee23efce3d809ae0f337"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
