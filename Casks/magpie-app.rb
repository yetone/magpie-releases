cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3980"
  sha256 arm:   "fe582598fb1379818833282b3266efa6f5f7e2fcd7cba9ca6d69876391d7c7cc",
         intel: "f069b224ece1dae7577ad005d86dbe7d5d01f52a8f22c566d4549c06cb5195e2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
