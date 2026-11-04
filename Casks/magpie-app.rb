cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2976"
  sha256 arm:   "c47a9e669f4d125d4c8c41bb32cd862c6a1aa23cebc6e83939bb2fd809b72c9b",
         intel: "5a006867bd95d494a2ac703fc2243e9225437fa73038d7430cdaef31bbc72eb7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
