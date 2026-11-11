cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3798"
  sha256 arm:   "a34ba46fd220de17c5b692b9b4c7b30f02b2fa3077ffec2806fddc81855882d7",
         intel: "81131365697e7edd9d5258e99717c67de6f0f11f768c0411c2530c377ab88c7b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
