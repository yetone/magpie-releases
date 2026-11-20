cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4595"
  sha256 arm:   "93a5db4138d4fa00a4ffa61fcfc966de5d0324a237692c7358d8a50a036011ac",
         intel: "55fe9fe4f8d86e7e5f4f870e76f5e3dda3e0cb73bc4d2254ee988078ad7d0169"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
