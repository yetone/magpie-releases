cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2857"
  sha256 arm:   "4fefe3ee8fe1cfda3eef90dccf2432779441569d68bce235f2d11fbea6049862",
         intel: "cb336d810468bcae09841eacd6e9d0346373f52a921af7f79f1723181b316121"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
