cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4073"
  sha256 arm:   "eddd9e2963f21fd990eb08a0206f59c593a2d2fd6e273e2b9d7b8967a0a63d5d",
         intel: "67912662d13ac9198b3094772975ebe70aed71f6361e268c3247fea9052960cd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
