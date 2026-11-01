cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2519"
  sha256 arm:   "f691aa4ad595792aba3fecab59f0ad2008f1a8afdf581afa9d6b6eab68501a87",
         intel: "bc99ab144c1e5d9217e97a142aab3e319dc87f32ae610a16b2cf567c5b8f26c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
