cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1833"
  sha256 arm:   "e21e7be2495ae99438a21058f2085314d79d9d0fde56b1e9570ab91ee0ca52e3",
         intel: "dd50879567834a4716f9536f2922e73948fd786d69ef9c8c92b5f52fa1cb58b6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
