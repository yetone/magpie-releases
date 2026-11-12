cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3930"
  sha256 arm:   "6ba02269b2984904de144ba9a81966df0dbe25b25e7529e0adabd9f52c35af11",
         intel: "4f053202e189deb11c26ec70d12c17be1d6d495716447efbfc2d085f4553ab64"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
