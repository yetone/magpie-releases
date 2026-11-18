cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4489"
  sha256 arm:   "a05bb8c96e40e239e4c3132ef279c00c2d49eeedc9bb252fea2ed41b6cf3b930",
         intel: "19bbb15a71932a36f71ba7ca5334a2e2f27d6636cccd7ec71a9bf533f9908b07"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
