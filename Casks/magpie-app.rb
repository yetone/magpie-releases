cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4056"
  sha256 arm:   "2bf1d89d94fa840eeb3f00cfc85edeafa7bccfe044828a797a763fe0bb1b7b70",
         intel: "d168ed612c20b975bf311ec00b64131634eb7e81350b365989859e6599f33df5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
