cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3235"
  sha256 arm:   "629d61cc96394c895557414c50ea5e89cd31ed828b7594c70c418af321235566",
         intel: "4009638ff8e4a07f6cf3c17a81ac3c2b6c144c0eaaa8fed9f065e72c26b70f1c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
