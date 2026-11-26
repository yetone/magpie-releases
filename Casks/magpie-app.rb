cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4914"
  sha256 arm:   "87b1846908e601df913b29854e9a32e262b379c110b09c3fe7c6ce8d363e008a",
         intel: "e364f9b0c2151e8e1fcdec4fdb64827932c612a96ef4ca5a0e6fad52df69f972"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
