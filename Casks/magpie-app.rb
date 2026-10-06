cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1084"
  sha256 arm:   "7ffc67c9da00e3caad8f33f4abfb4ab73199c68d17a96dd19aacd6108d277047",
         intel: "5c23d6f671d9882e132b6c797dab32aa10dca4af61193ba57331be3a930c9cd1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
