cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4925"
  sha256 arm:   "aad1e26db775cacd6ec8abd4bec15a8c381d3f7374d21b3048ef18ac97cc82f0",
         intel: "655555b967a7adedd1464b58e29289a1fcbc1f8a713222b6fa743ca47d9aedeb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
