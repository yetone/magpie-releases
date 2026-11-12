cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3948"
  sha256 arm:   "c213dff3d75bf1946099bf64d9e67eefaf9a2bba79c7291ef64c3e5770158501",
         intel: "e7d41535a77ced4d21930ea40fa6ecdb1703c0d614d00278442afe82822f4d65"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
