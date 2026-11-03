cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2778"
  sha256 arm:   "5dc0eeef3b504c0819b5569c14b35ab716bfb827c60fb0ae343a69a9d72614d1",
         intel: "1da6dbc2787c0be3a2d55d0604954a0c1a55516b316ffc982b28ab0686029834"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
