cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.138"
  sha256 arm:   "e274eb1d0c24d5383046c3ff69db226920eec994c0611db62a2a024f7e6c6f96",
         intel: "89d3250238d8b36792fe9e2a706ab2ff9d883f0656c6f954171176122d12a665"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
