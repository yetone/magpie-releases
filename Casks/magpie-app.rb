cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3489"
  sha256 arm:   "1f73245eec2831922ad67bab4d0e2361d4e427526d57c670f9408151197f13fb",
         intel: "f365e720d4d750e0b8270220c49201f285267e7072d070d4cefa09b98632ec18"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
