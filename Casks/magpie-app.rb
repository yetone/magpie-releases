cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3632"
  sha256 arm:   "61c8df2ebade7ab7956f1825e1a0c83a4ea57b46750853d1fcdef2528d073283",
         intel: "2691f3a1880a6a5545a8963691181672f314aaf4a213ace35a219a02f0fd7b1d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
