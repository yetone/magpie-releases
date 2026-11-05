cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3041"
  sha256 arm:   "e2dc1dc64c3b549cf3aedb9b643f446e22211d96c61c916bce7ce5d23292a35d",
         intel: "bbda7fce6cfcb61b78d415fe6f95cfb08d61d4a65215b8bdf9ae8ce8c7e5b5de"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
