cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3662"
  sha256 arm:   "6b8d68d68707b14a3d3906558131efac1d2b0eaa1e2f20fba60ee98b1a97ec22",
         intel: "a763b524f1cd1f661b195353560e65651709fd3bd66346cfde92e273351873a2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
