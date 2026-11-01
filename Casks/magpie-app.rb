cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2594"
  sha256 arm:   "9570a192dcb33c71e6c9059110e17c85fa7814bdbe549732113bb7be3ec0826b",
         intel: "d6fb03a4223f188ea7f3f00f352240b50d14326a9fb95539b5c6b3a054128117"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
