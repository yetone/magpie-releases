cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2208"
  sha256 arm:   "65701f90c646512bb8ff77864ce199101a2716b7b7c27bfe181f7c73a1221786",
         intel: "6bdf479375f7f3cd948168143d562fd6ca236bca63f8a5fbb3a385a32857981f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
