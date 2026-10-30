cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2257"
  sha256 arm:   "8ae244f7b0f6f2514a030a7d7ec9be87765087afdf8578a46f00117e63081eac",
         intel: "ac5e863caf8ce675f474c537c02eed2673bf82736c234ae74ebff2941c722e85"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
