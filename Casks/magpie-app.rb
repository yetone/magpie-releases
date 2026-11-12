cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3816"
  sha256 arm:   "6bb5e24f002ca70eb9f9316f16190088d1f2b44443064a2c217aa0d111ecdb1f",
         intel: "ecacf134f12bd0cf6856797923b541611ad3ca60ceb00780d032eadccd5d3804"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
