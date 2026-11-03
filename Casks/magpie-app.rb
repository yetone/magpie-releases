cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2822"
  sha256 arm:   "bd6cec07286c724d8c0edc924b1d299f6d32b4c2540538cab29da599aada7c64",
         intel: "b4d0e280cd4a80a74ba0bc8983b8bf33738ed8442978933c4f3cf3b535f1d086"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
