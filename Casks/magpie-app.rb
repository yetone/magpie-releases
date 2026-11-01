cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2530"
  sha256 arm:   "7d224d9bc3d1bfc756e502c69cc9ed9096ff23273d03006d988832bac2cbb705",
         intel: "c8fbaa5d182e77d19a7d53a800d7a65a7ee57b6dbe6d0de2dfd0d143d3006c44"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
