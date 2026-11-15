cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4254"
  sha256 arm:   "596c9a11d76b0ece05ce061a1364e2667efa40a1393ffe5359119fc00e5b6846",
         intel: "5a50e9b6b9cb81ffd2db604794f477104a62e9cdb471b43972a2bc5ba7ac969e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
