cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4242"
  sha256 arm:   "ff8a4e3de86419cd9c2270a4aff1ee7720c3cf0d5f94ae98328581186456d127",
         intel: "870e14330f784ac6464cb1750a3f1e4406ee8690d99b353f42d08399b9cef14e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
