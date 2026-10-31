cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2433"
  sha256 arm:   "a8e6bb0abd5e6dad1d5d0cadbb17f35c402fc2401a4b95971e4a727fa82bf852",
         intel: "234a628057cfb46d04d2caec8c1127d0984fc0ad2c2b873c22bba6dc4d20603f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
