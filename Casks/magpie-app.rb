cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2261"
  sha256 arm:   "477464d5eb47edf6fd23adca56cb008c73c1cc26066741be69d8e9df6c143dcd",
         intel: "f16264d07ad7a1fcd37aff8afa8d1e901032f8d9c3eb13f7ca2c3d70faaf7243"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
