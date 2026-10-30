cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2126"
  sha256 arm:   "c7439683570e9907e452bb8eb07b255e513b2cae3a1c7697026d1f7d0fcce910",
         intel: "f556a00bfeaa2c96ebbb8b007af683b0441f083b70f2d3880f9793450805a4b8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
