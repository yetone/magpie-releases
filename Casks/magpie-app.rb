cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5053"
  sha256 arm:   "f01470deeabe8f1322328b8fbc2da85b0178cc47042babb9ea03744d853bccef",
         intel: "68d7efe49df3154bdad96fcf96c9cf2e1d326b008722627bafdd448db09e7d8e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
