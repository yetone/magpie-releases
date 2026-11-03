cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2849"
  sha256 arm:   "ff37b0135cec04988b1cd29e0ae01230ad5001cf88a0cf7efa3e0943bb18144a",
         intel: "53ae19c18ec830194194a258dd7fe6b48f4b224940fc3ffa4b50d1ee845f9ac9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
