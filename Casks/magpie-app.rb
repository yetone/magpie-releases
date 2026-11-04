cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2961"
  sha256 arm:   "72b00ffd270c78c0bf5823e7ca36d648ed88bd028cac224bbb07f23004a9b7bb",
         intel: "8f951f6d6cbb5947d63df27fa6b963b1bc5ca1d383e540dca0336d63e6098e6a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
