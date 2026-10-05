cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.954"
  sha256 arm:   "2e25c47a7a83401160e4059643e88df39aa7b890e3a78800ebd5bfe72bccec31",
         intel: "bd15626db1ba83ed2a3e5162d02d96e922210c3b645b984cebf9d379aa01b3c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
