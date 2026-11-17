cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4358"
  sha256 arm:   "12286f0fbf6ce0f36f8455c36c3687bf660b4396a6d2965501558d1bb9b7d1e5",
         intel: "419a732691d2f22a671ccfe600d52bdb0777ed3d80fec2573a010188ec881f5f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
