cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4496"
  sha256 arm:   "ae2783217fcfd446dc7b19eed258aa48cc6966b8d614d6b44f2a11498a3e8a11",
         intel: "d91133a6166f303a79e4acd4127f3c76b61f5ea50cae43e55020926760ed7461"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
