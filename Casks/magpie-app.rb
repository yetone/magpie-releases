cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3481"
  sha256 arm:   "73d5b78ea023e2ed31671a12cf5d4bab6899070248af947f06322ef6c5fbc8c4",
         intel: "942bd9252443dea7ebea6a6474912bf3e44266ca5559e61a381bcd6a51b643ad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
