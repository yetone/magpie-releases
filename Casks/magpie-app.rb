cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2214"
  sha256 arm:   "f09f5b3d5ad1e9400a0096f9c546c5af4363d3b07d221e59991977112eb661f3",
         intel: "f49d8fda95d1c03c2f96e0607822005d7e7bdcc146d0e59e5ff7ea4b71fd6f34"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
