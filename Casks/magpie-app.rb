cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4236"
  sha256 arm:   "1a8fad1fea9e2d9c2f1e83a6fe747db79341fac7342d1398779b2f05f63fd1ef",
         intel: "1127a6bfd4ddac3d9d38d0e2d50c69fd709b772f44c491d5552f99d7f1a5860e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
