cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2319"
  sha256 arm:   "d812ee0322efef5bccc650afe2f7c94ecafa1a20eb18e74e9cdc12b0f68a4dc1",
         intel: "cd45b02913f837579bde39a0cb25fb05bde44598c469fda9c3298c0ed8932c1f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
