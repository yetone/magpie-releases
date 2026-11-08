cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3339"
  sha256 arm:   "a8d77029350be885086c1d45f0383f8f3fc70a353e0c2fa35ff436b5eb5c04d1",
         intel: "c437c3de9d7fed314de8eafe38b2d2a267a4f9bbbf92b77932ba47898d8c9062"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
