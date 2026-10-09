cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1139"
  sha256 arm:   "dd6cb089590a584560edbf64feb731de9941e3cfe3c3a365a2ff8f5376fe5885",
         intel: "ad83e3af098d5534f0bf84d34aa005c6badb3b5a7d041a1d036515a995505932"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
