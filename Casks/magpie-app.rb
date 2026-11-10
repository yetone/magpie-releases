cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3514"
  sha256 arm:   "37cc8d51a0013c1508ef1148b3255a0f31feae6bab5d61a2f6100ba169c0b2b4",
         intel: "5dbe300f4747dce9fe89b7936cd16c8c6053db9d4d682b377402bc0a9bd90417"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
