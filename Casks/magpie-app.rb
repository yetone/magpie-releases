cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4284"
  sha256 arm:   "0e8c92e16ebe6f1919e20e536fbab09d318c952be30bd4304384baeabea0b1e3",
         intel: "5e5267fabefa2988a6291f91f19f78d6a51fbf5c7ba04ecfb36680913bcd2a3c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
