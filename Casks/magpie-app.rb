cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1907"
  sha256 arm:   "cd9e23a208a981dd026ba97c913e4954dd0cccf8a755641e9fd80edf5bb63bfc",
         intel: "d4d9ada63ab275e3d92032ce6e8591e795bc1c8dacdba052c60e3f93174a2f40"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
