cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4640"
  sha256 arm:   "61320a26644491c230ad12fc41ea69dd6f56da2cd5c1082f875f7377915acbb9",
         intel: "0cb400e5887e65301205195c782f5647b2f14d220a288b8d50483dd10840a821"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
