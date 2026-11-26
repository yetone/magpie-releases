cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4883"
  sha256 arm:   "f7ef50a78d09bc673f52967c74949b25533592e22d768902b433fc0ed083c9c0",
         intel: "c3e1475a4db931787bcc784627b99264b3745d0a1e8a52d9601cf1841c0a92ca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
