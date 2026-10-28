cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1895"
  sha256 arm:   "c9a9fe751564a5ab8656590a80ffd010f8629312fcbf728c03bde3eb0c1faca7",
         intel: "10cc196078d9409c51fea6acfd957d1b445ebb21f0451deb16c98dd1fbc80c2a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
