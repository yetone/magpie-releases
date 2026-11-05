cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3020"
  sha256 arm:   "0a72812ba1bf173d98bc0e5c2130d8507c6d12a4ff014259c00cc56e9a347c41",
         intel: "7817b8a90ea16ccd8d6a9e0e0cdad1038a716aa421c6465a9e4dff464bd47ddb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
