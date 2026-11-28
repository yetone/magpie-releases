cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4991"
  sha256 arm:   "3474d8208c3e38d11e98a5a6e38ce8fda666a6ea7b25d7e0a570062d0f4e50a0",
         intel: "611c2a73fd7b894f5e777f8b82d28106af227e6fe4478cb61caa3f9ac892bf72"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
