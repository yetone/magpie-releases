cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2549"
  sha256 arm:   "9140e3d1ca18e0f5d7df495301afd401e58b4209fcd9b740e2b75080dea909fe",
         intel: "ab5496122a6214136b4a38f6c0c60bec376f431eba5e559e83222fef5ab72342"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
