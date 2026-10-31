cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2434"
  sha256 arm:   "f3e5859a3eebfb28408cc3ffd7a36f329217711de7f6e07e0163a4a4d241c8f1",
         intel: "8cc53d5aab4dc7a7c7d82b1ee63422ddd75b66b9aed123946b58d05e4c060d24"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
