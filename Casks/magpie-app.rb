cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3544"
  sha256 arm:   "064ee2bd55694e659cf485d8d7770d002f8e2cb2284790c97a6f1057e3be4f08",
         intel: "ce169f1a4381f6d50630ad3b09ddccedeacf06fe24016eaf258dc0fe8d613c42"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
