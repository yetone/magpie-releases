cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4534"
  sha256 arm:   "0e6c9e81762729a406b3665f6bdbc0a2e9c687a46aa32068971d115c47fadfc8",
         intel: "e0cf330243a277cdda6f2e099b9b8b732e68378bf70ff776029d5e1c27794005"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
