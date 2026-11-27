cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4947"
  sha256 arm:   "5f44d55e8ad6cd8f1c12cf459ef1bd9926bcc671ffe592b5e87c19da555edcb3",
         intel: "b2ea13ba8e2808506809d21f0e6d64dcaaf6c7de114ed1c25978121a322fcb75"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
