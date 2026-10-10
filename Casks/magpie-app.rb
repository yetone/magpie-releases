cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1160"
  sha256 arm:   "ee7ec355a518c318b4d7914f2e92b357480da7f4cfff9f9bdece9b3eb57d7e4b",
         intel: "e9856956641f0b556a446e721a002e657c3acc0701a65a500b86ad5e77c16c75"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
