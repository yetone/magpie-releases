cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4316"
  sha256 arm:   "e9a1e9f61e08507087af7e3517b83fc6b48726bf0ab0ad3b1347b8873a9bb6e2",
         intel: "e338819191d75f46e796da2a485547550ff46b7d1467563aa95bcc127180ba43"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
