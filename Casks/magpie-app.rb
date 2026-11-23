cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4730"
  sha256 arm:   "0d4e018037cb2d14d27501b498c466ee95152828bef012f9b785de49a1ef65c5",
         intel: "011d6257f4709c5144a3d9091dfba4d61d1f5091fe81c976ce7cdb790b9a6f02"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
