cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4517"
  sha256 arm:   "cb88756f47fdbfa316ce68c762cf5f15bb20122cd862726afb18e099a9cc06eb",
         intel: "5543662dedf1a19d3869d02d52bcb6eea4b4b0b3bc0f0f40ff1bde30e7c88ea3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
