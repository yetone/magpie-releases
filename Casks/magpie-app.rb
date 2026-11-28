cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5018"
  sha256 arm:   "d7ed0cfde81fce520c529159631293a3068aec72d7ea18da23f8eca00d7fe649",
         intel: "0761c3d9260fcc8ab4fb7beb1f28284df3154d3acdbb8e86ffdabd95b283078f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
