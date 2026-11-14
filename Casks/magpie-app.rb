cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4132"
  sha256 arm:   "28b870e17bc41e6231dc5fafd4f894faf0b26fe31998fec72609467a0e578b9a",
         intel: "097c3fa52f19ff7f00f6ab9c6f013c4713b2272d4e6c0c964ffdc9fe7fdc3d14"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
