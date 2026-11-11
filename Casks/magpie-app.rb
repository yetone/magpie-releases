cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3719"
  sha256 arm:   "cc62dd9de5a33b8cbf7067e08a87289ae2ebefec53e2dd0472c910f26236c002",
         intel: "678f5c80682187c8e96a4dc4195590c3cf38df331066acd659c3d624351a208b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
