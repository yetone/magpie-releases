cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.919"
  sha256 arm:   "b0d84abd92ba92065d658be0cd3448c1db505523a78c22bee90b0a739ddb9c8b",
         intel: "1d1b0badc32c31b8825201eb409d4889a3c363667cd32c945a82eb30e2a7fc1d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
