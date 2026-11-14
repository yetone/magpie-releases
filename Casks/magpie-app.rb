cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4149"
  sha256 arm:   "bc655189abced8e5984762cbca73d4d658c42f5c3c50e33434ae7023ca63d89e",
         intel: "100422974ed18564fb6ce1f76b0410682e5ba92e21b4c1d5a510edacc4f46dd1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
