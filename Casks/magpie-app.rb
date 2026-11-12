cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3944"
  sha256 arm:   "5500cc0b50a3bfcb7cb2a697431a32635343d0964e9be0ac87e9ff2f9e284b30",
         intel: "8a4481fcf59f384e643b12fb705ad4568c8b0d01c975f42fc768ce15158542d9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
