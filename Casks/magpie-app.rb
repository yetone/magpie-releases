cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2130"
  sha256 arm:   "f34a389d4c1b34e81116472af0457283a3071bbbc402647e0cb4595b26d5c181",
         intel: "286e63206dac00a1f67c1614d5ca8b6780093975eb6097e2193c7e4444ff4d60"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
