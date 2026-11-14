cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4114"
  sha256 arm:   "2fa79c2a2d0c4b3d0dc24a5ddd8ec88185e7f1f3923289e38f44d45ea858e79c",
         intel: "81ec67ed6e279b61b18ca279f9357539656fc6ecd673c3422e115e532926918b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
