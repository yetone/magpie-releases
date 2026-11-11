cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3724"
  sha256 arm:   "edaf7061de2d7b18d0cf78b5d466772655af5084b592c61a5fd093c434d848c6",
         intel: "b705619cff34742e259b2fe80f69dc8b33028115c65a6772c25dfd58656856d5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
