cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4387"
  sha256 arm:   "1ca645ea0d471e46b704bcfb50086bedb860898dfd2b7892a5d9b4a37ab3bcd6",
         intel: "b95d016d36fc90c21e96164566788fc345b330a61bbec4e8f8d286439c26a02d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
