cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2440"
  sha256 arm:   "274717f2ec445e3f62ced0fac1fb504cb3aa56235ae7c22ffc07100656b9132f",
         intel: "133a2e050ff6c7bfe3fb0fc92abd1df209c32a2c7430ca8978cef77e8af06b68"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
