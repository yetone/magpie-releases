cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2249"
  sha256 arm:   "edda80a7af1a55553e9ef6064de164d190a9609fce4db5ecc34d358a1ed1c574",
         intel: "bbca224f8f6be7199323af88ac6358fb329411821a1073ff7a5760450dd743ee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
