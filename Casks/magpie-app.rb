cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3067"
  sha256 arm:   "57e6ac6df8958ff7b6165101894fb8ba88fd2fefeff9aa8528f584310c1fc8b4",
         intel: "d6584680b59851dc66ec22355826a051578c03fc6f16f55e37179d2f8916cc70"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
