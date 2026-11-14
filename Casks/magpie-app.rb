cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4209"
  sha256 arm:   "a8617217837b1c04a39c33ba1a0216d8eee07ca493e63ae5206f2e6d653ecd8a",
         intel: "ff933bc0a408a985966004df2b7ecc1e42918b863b6cba3e5ec0a7835bc646e2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
