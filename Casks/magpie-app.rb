cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2302"
  sha256 arm:   "326469ab231c3959d2730829deb4f3f16989446d472434c6ab7376b5e6ec7707",
         intel: "b3cf582d386ec38f1aa1af1ef5ae3893e2a1dde300c373c2c68d8f1e5ccbe1ea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
