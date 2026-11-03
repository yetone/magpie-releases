cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2785"
  sha256 arm:   "a03b97c186d920fbc991d12bf0c159557e84557bd9db4daf71c974a75054fd3a",
         intel: "13a96aeacd9913c6eb8f843b58ac2bff0f49a6b268dd1289375fd214704c96ed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
