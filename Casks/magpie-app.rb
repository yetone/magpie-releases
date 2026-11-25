cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4787"
  sha256 arm:   "e58b8c13801a96ef7298360d4c15e6bccd97490f79f848a3a60af87c45776eb6",
         intel: "21be262807a6bb7e2f5c299d38457b4d651673bb2717946d5471c5e43931f661"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
