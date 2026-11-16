cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4323"
  sha256 arm:   "0c38abc624ab4f49bf9714f9b95617288376cf5311718c9c7283e96e38d7e41d",
         intel: "fe2f2be517fe2d9e993647ba8b94fe8f1b7cc1369bc2ba2d953362ed9570deb9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
