cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3093"
  sha256 arm:   "fb8b0fdd48ce3a10f1f8b4ae027a8c460d928bdb2a0f98ee8a227a414f1eb9dc",
         intel: "cda1ae06090a05b98841b516b6f32798a1082f5a97a59f591902c2baacf2df40"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
