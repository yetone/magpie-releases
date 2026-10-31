cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2367"
  sha256 arm:   "af32635b81516fe59d4e42ab18426d6d05995f0da13a544a706d045460ddfc31",
         intel: "398a79d55a104a4eaf9a7d55d505911d20a57371502291dc6309a99f27782ecd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
