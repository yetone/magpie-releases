cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1906"
  sha256 arm:   "e5c1c36f22b280a243c28e80a5ad77b8819c095f945c9f5d92de09e961f7a22e",
         intel: "ce1ae4bf9ac7d233bda60057c25019679b3e3d3969cb2bd8a5c1b694ad44119f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
