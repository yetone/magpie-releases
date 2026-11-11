cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3678"
  sha256 arm:   "3ea1c961422dd2ddfe3a9771de0fc9646563b2c8af7bddbd4dc03d1e8be139cc",
         intel: "ba06d86e96c7d061757591440812344bbfc2ef35e779fa4a6a1182c06fdb2f0f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
