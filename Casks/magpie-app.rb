cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3052"
  sha256 arm:   "5f426e9ddef6d782f5cd7cefdd154d89f19ae52590dd2fba7f4ecb65f513a841",
         intel: "d4dab6a57126adae957646549c2a36d1207dac64dada33de5ede8ff36e71906d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
