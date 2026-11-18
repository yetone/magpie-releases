cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4406"
  sha256 arm:   "f8a1ab54f73e10770655c3254e659da8088759b6516a66777a3de48a5c0a5102",
         intel: "623a4c120deed2bb5c55496111369041ea5af914b9acf79670a4353752498223"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
