cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4519"
  sha256 arm:   "2557c6009f94b00be8963976028ba99860d3d96dfb2626478703841a1e06e9c3",
         intel: "b3fbb2ab650236943041a3e280eceabc7cb9664aa146fc4d916fa66309feb085"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
