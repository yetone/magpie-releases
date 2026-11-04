cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2950"
  sha256 arm:   "a3fce0372f87dce6cf576ab28f8bf15b5c3d6b3aa34f7deb51b5cab6605f7ad6",
         intel: "120f043dcd9b17d58a01cb9f51f33310ac86052a327f5adbd09aee6d23b43282"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
