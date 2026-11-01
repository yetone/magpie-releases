cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2542"
  sha256 arm:   "000f4c227056016d27753353310eec9a32292facc741ac199e27b58189af3efd",
         intel: "0613633fb0370fefebce4f837e4e7c4af587432e63ce51e17af40f4b57d54e75"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
