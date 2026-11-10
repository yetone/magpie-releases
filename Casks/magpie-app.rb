cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3564"
  sha256 arm:   "9bae530f21bb52f26e375d103b28c70f165ee6dfc180048a5ab64960506952ac",
         intel: "99ef63e482f5747a2cddb6de79369fd9ecbf6ec8524c484eb218f363b797c92b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
