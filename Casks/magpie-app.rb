cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2602"
  sha256 arm:   "a227c017aee75ed7d56e0fe2135ab4cb60cd58672cd79446cb1ea20a0824897e",
         intel: "254ba35c703dace21f19c904f220b34e2287dcdab4fbf8c016471b0fa7c0c244"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
