cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3848"
  sha256 arm:   "c8c0e281b8a7c7ad0e6df5f8bb9a3c938e7469562919f1f5fdac1d7ebbcab9ec",
         intel: "8ddfe473f2fafd651acf7d48087ea5032f435fda8c76a998e110a0c3aef5ea30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
