cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4049"
  sha256 arm:   "e1b3cf202ca2bde69ddccb9994720810ae681f69b546da0fbbe0375ffe4af05c",
         intel: "e0a51ac5c3e18912abb82a49f0ac47f05ac3362849da4e2708c01d6263e8372d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
