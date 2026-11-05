cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3042"
  sha256 arm:   "b3fde612d0594845c24018009250f648517419fbc74240f83f29d0f81980e175",
         intel: "63796d77cdb50a2354f3a650b6f1997a5ff134d859be8c647b89f2b6e376c6f6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
