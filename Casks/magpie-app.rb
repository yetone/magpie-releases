cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3886"
  sha256 arm:   "fdea51f2ed2d464194e4b1067f01866b0cddb1f7875ce1eda54268fb6abfcbc0",
         intel: "33f1f22906ed9bb73fdaf017db86e7b871832988559116500117f305996b5175"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
