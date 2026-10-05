cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1002"
  sha256 arm:   "e0118b6a7866a29b489e531db5e05bb08c1ff3cdedc7a68f477c5ed510af6426",
         intel: "d7b64d2037a6b90ff7fdde6c2dfd415e710162e9a64670ec8ee2d84d8da3ce8d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
