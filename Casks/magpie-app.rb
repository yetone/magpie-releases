cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2523"
  sha256 arm:   "b788d664effe06d1e1ef839894ebff24c9d91d571ae78c8dfd721e4e47f7caa7",
         intel: "49e7217a0c324e3621660491315d787ee38540758a53df67aa57be9b25710a5b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
