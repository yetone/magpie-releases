cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2872"
  sha256 arm:   "a6cb7d962a3bce0ae2af770ad08b2732174ce3f46060d5c4f09accdc5de7144a",
         intel: "565d8d3031540518625792a83b913e5ac0d3d5af4b5c2be9b93bc1fc886c769a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
