cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3002"
  sha256 arm:   "4baaa9910a1ea41f91f8d79b95b3dacec30f5e58654067d625f81723925dd600",
         intel: "47a495eed411ab2a27a5df615e3aedfe43e1feb10eeb4520508f2c98149872fb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
