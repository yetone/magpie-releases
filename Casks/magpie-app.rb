cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4507"
  sha256 arm:   "488bec7b6222270c51cab8e2b6a7b6f38f1ed305e64d1817ab0613447f05a300",
         intel: "8bb4ff4daeda2deb74483b1049410676f253098db8e2980b89d0bfe24c9dec9a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
