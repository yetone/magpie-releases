cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2321"
  sha256 arm:   "42ce7759055b50faacb50489d93537a3465278150962fb12e56cb1abc1f04937",
         intel: "c6be6d4a7518a48a3d00485bf427def254cbeafb98db0e4c0755f96f556fa534"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
