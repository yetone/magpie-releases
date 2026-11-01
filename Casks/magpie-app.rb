cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2593"
  sha256 arm:   "2d681990cf4bcc23508db0052e3305eb08bff69ff149a149d4ff5f54a32197f9",
         intel: "95546f7e7645d2007fc04fd749bc69345c701f2a161e71563e17957b0689dce4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
