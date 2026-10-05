cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.945"
  sha256 arm:   "2fe5a00592fcd41dfd383e704138a57c298d97bed851d8d080a6854e329858be",
         intel: "2c9a4e1c8528794e601823b28adf80af8e193e409341f940c83a685f04b80d49"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
