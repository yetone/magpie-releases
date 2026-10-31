cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2473"
  sha256 arm:   "a69c0a224fde15db3eb05becbef2f06335a30b54aebf3a25264fff37b97b989e",
         intel: "be4f9461a10185589757707d55120cbf688044ee3c8d491b0207b39c9dee3e30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
