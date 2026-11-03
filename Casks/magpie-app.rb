cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2788"
  sha256 arm:   "9beb717b33522fe9c988b38526b94dfe4c72da7ae7569a0505ced856779afe3f",
         intel: "90c61b6c169ad08fd505dfe00ba28b7360cbd5c5152a734e22445f8c529464e9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
