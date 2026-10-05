cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1054"
  sha256 arm:   "a1f2fa71f2a4d67a702c2ac5a1b552785b96efb51054e9a4ce65a59507e32cda",
         intel: "80a2fac9afd3256baf77aeac7b02aa538496adb2903769122445f3ef6522e179"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
