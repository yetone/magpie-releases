cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1974"
  sha256 arm:   "05a7081d67fbc3d9e9cea91f682e4403924cd699e8e20163194318c2af81f3f5",
         intel: "60ee043493f917059235476bf6d7e8f52418b1671b60b65bac7e657b85d153f6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
