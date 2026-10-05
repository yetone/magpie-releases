cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1014"
  sha256 arm:   "1e2f0e549ae827c7f5682bcc85ce5d25415b4ea1f8d87cbf2336444a196756e6",
         intel: "cd7dca1cbd1bdd33a8ec5e19ccc6fe9178c4c36141a4f12272dc5e713fbba7eb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
