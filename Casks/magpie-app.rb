cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4545"
  sha256 arm:   "d70a7c4d9d560b3df4bb04cdebe0305bc86f4dbf303f612a5d6d3a35fa67d11d",
         intel: "1a83d04bc491bb13492c8b45c6e4e3c0960a1639524835c5546b3b98c9f1abcb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
