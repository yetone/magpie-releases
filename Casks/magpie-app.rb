cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.929"
  sha256 arm:   "b969a63be44417886997c1224c972bca6bc98eae8d0c0b2d8e835ba13f6895e7",
         intel: "fedc8870b0ae898e19f10a022b9437037e132281d75fde643887b8a245697efb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
