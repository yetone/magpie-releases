cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4602"
  sha256 arm:   "e01fd486fe5af356f36057a5f5b8d9283a04527fba01e4335949fa4dd702f970",
         intel: "f787fda4e76a76d4b5cb1b2fa9c207c5b33c64e6558a6bacff2df5f427d0b46c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
