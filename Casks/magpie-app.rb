cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3386"
  sha256 arm:   "c2d179db3c510e8aee82b856f6ad933b2ed758acede4d2d7d74592b32e124bab",
         intel: "e630bf5fb3e8df301db59f6ad3244d74d3de87f91ae0d87bec430a523accb1e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
