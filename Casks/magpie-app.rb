cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4366"
  sha256 arm:   "215bcca17552a79d2e49e5a02f97028d85c2dd54a34f362e0f48d30fa867870e",
         intel: "6779e297e2bf2e1149a733e20b5bcc1f1a152954eaedacbb57e4ae30467d3b6e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
