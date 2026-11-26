cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4901"
  sha256 arm:   "dcf2a1f28f5d33bc58db84a11733028feb09d8c22a9a5e9b783e410bdbf69f3e",
         intel: "0438ae5574c08114ccc5002b06ceb1c51300763b5877699c16e7f8750a1ed54a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
