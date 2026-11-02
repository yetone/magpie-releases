cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2675"
  sha256 arm:   "208d82f6bd541f45ffebb461982759b873f1e2d2ce05d0f57f62f193b5c6dbdd",
         intel: "4fb76748563bb72a5aed54efb3dd6bf53a5be37be558b01405bad0e144da4cf7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
