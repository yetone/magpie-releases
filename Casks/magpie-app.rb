cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2405"
  sha256 arm:   "b9fe1442a8e1a8974a5f9f78d394736946efc26496ac2e65e7b402f26643a1af",
         intel: "af5c409236f32c8c128493a95944af4c2b95c4e78435615623835d4263f33701"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
