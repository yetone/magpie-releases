cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4492"
  sha256 arm:   "f75c545590a2777e9149fe848a9f2cbde14808ba3713b6edecff9ce3fbfabad3",
         intel: "994374d1d0c4745bac9a3e6cc690aef3b516b242d451d5a2b55e2fd7447c4516"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
