cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.997"
  sha256 arm:   "c104f757a8c41796ba87cd143bf86c4e04b8f7a4580b61e7796100e3c89471ad",
         intel: "bbcfa71dcf2151e1109e3284502f8887d60f822fda5e6f2713354927aa2570ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
