cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4992"
  sha256 arm:   "70b35fab0e9c63600ffb63270e0bcb7ece4b53d62a4272be2e0c5e467fd11f2c",
         intel: "dec6224efe8f0a27a192ad3361bf414aa66c2e5359306f499b9f6c27635a6c79"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
