cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2438"
  sha256 arm:   "0c83310279a1c8a4ee1d491d87f7cc4507e79263579c74e7a24fbb48c70bf740",
         intel: "59f96ca7a75d1594b352ef284107c390444cfd3c85d5df40ee7c5d78f5021a42"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
