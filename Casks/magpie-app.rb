cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2986"
  sha256 arm:   "e159ce5b80b5437e999b197c35baa40b8d05372a03f2c15b3b49ccfb7d2a315d",
         intel: "0ff46b3cf1657fd1a56f24bf5fde6ecbc0e428a5d02ed379c34ef3b8df2a0464"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
