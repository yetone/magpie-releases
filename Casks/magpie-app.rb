cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1863"
  sha256 arm:   "14e3ac5e32cc5dbfef15f838ad398be2fbfe964c6686b31ce2d817777040b29f",
         intel: "8bd8f9994854371cb189850a5d91e425bb25587ddc5cc909a3fed18b759dbc29"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
