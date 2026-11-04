cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2958"
  sha256 arm:   "6e4faf62bc302fc5378843f5e3bc262359c056ed4262edabe95fc05d1492c23d",
         intel: "5779dc3834e8913d0f2a3e143e4ffab2b51caa6ce9536aad8a73ba0d1922c75d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
