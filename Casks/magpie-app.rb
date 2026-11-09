cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3374"
  sha256 arm:   "1b14c031d0137002dc461e1faf63c9d9aabe5eb9d3f323db7af8e5304fc97322",
         intel: "9f6102370510a4aa73eaba661170fc2ca45816a914269707bd7c918dbd9736fa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
