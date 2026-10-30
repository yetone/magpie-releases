cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2278"
  sha256 arm:   "09e9207efc8c2bff50a22d149bacf18c8596fa1dbf6f60f8a4426d9eb35568d2",
         intel: "ca5c0c2bf436ab6f5bd09dbd891e50b8279095e987b6995f918c8c55d152e7a6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
