cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3324"
  sha256 arm:   "bdbe065fafa5aedd89e3585a4498bccc2cfca5cdaa30b0255edf4a1bf5e58963",
         intel: "4419d8e306a1c58bb780b609e305208899fbd143dcac11554051cdbe95819201"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
