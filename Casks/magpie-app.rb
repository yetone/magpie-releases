cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1975"
  sha256 arm:   "498ade9ca251992e21d81f083877a294baf4ff93b0af2c1ded71864b034360de",
         intel: "99e450e0d7e86662ac88895dbb838c7a13c77e238b2d29edaa76d8a0bf6c8ee7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
